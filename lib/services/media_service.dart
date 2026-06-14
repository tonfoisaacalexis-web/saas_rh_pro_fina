import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class MediaService {
  final ImagePicker _imagePicker = ImagePicker();

  /// Récupère le dossier de stockage local sécurisé de l'application.
  /// S'adapte automatiquement à Windows (AppData) et Mobile (Dossier App).
  Future<Directory> _getStorageDirectory() async {
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final Directory targetDir = Directory(p.join(appDocDir.path, 'saas_rh_documents'));
    
    if (!await targetDir.exists()) {
      await targetDir.create(recursive: true);
    }
    return targetDir;
  }

  /// 📸 Capture ou sélectionne une photo de profil (Idéal pour Mobile & Webcams PC)
  Future<String?> selectionnerPhotoPersonnel(ImageSource source) async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: source,
        imageQuality: 85, // Optimisation du poids de l'image pour le stockage local
      );
      if (image == null) return null;
      return await _sauvegarderFichierLocalement(image.path, 'photo_profil');
    } catch (e) {
      print('Erreur lors de la capture de la photo: $e');
      return null;
    }
  }

  /// 📄 Sélectionne un document numérisé (PDF, PNG, JPG) depuis le disque ou un scanner
  /// Parfaitement adapté pour les CNI, Actes de naissance, Diplômes, etc.
  Future<String?> selectionnerDocumentScanner() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
        allowMultiple: false,
      );

      if (result == null || result.files.single.path == null) return null;
      return await _sauvegarderFichierLocalement(result.files.single.path!, 'doc_scanne');
    } catch (e) {
      print('Erreur lors de la sélection du document: $e');
      return null;
    }
  }

  /// 💾 Sauvegarde phyAsique et renommage unique du document dans le stockage local de l'application
  Future<String> _sauvegarderFichierLocalement(String cheminSource, String prefixe) async {
    final Directory dossierStockage = await _getStorageDirectory();
    
    // Génération d'un nom de fichier unique basé sur le temps pour éviter les collisions
    final String extension = p.extension(cheminSource);
    final String nomUnique = '${prefixe}_${DateTime.now().millisecondsSinceEpoch}$extension';
    
    // Utilisation de path.join pour assurer la compatibilité des séparateurs Windows (\) et Mobile (/)
    final String cheminFinal = p.join(dossierStockage.path, nomUnique);
    
    // Copie physique du fichier
    final File fichierSource = File(cheminSource);
    final File fichierCopie = await fichierSource.copy(cheminFinal);
    
    return fichierCopie.path; // Renvoie le chemin absolu à enregistrer dans Isar
  }
}