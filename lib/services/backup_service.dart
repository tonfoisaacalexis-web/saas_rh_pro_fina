import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class BackupService {
  /// 💾 Exécute la sauvegarde globale sur le lecteur sélectionné (Clé USB ou Disque externe)
  Future<String?> executerSauvegarde(String lettreLecteurUsb) async {
    try {
      // 1. Récupérer les dossiers sources de l'application
      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final String cheminDocumentsSource = p.join(appDocDir.path, 'saas_rh_documents');
      final String cheminBaseIsarSource = appDocDir.path;

      // 2. Définir le dossier de destination sur la clé USB (ex: E:\Backup_SaaS_RH\)
      final String nomDossierBackup = 'Backup_SaaS_RH_${DateTime.now().year}';
      final Directory dossierDestination = Directory(p.join(lettreLecteurUsb, nomDossierBackup));

      if (!await dossierDestination.exists()) {
        await dossierDestination.create(recursive: true);
      }

      // 3. Copier la base de données Isar (.isar)
      final Directory sourceIsarDir = Directory(cheminBaseIsarSource);
      await for (final entity in sourceIsarDir.list()) {
        if (entity is File && entity.path.endsWith('.isar')) {
          final String nomFichier = p.basename(entity.path);
          await entity.copy(p.join(dossierDestination.path, nomFichier));
        }
      }

      // 4. Copier l'intégralité des pièces jointes scannées
      final Directory sourceDocsDir = Directory(cheminDocumentsSource);
      if (await sourceDocsDir.exists()) {
        final Directory destDocsDir = Directory(p.join(dossierDestination.path, 'saas_rh_documents'));
        await destDocsDir.create(recursive: true);
        
        await for (final entity in sourceDocsDir.list()) {
          if (entity is File) {
            final String nomFichier = p.basename(entity.path);
            await entity.copy(p.join(destDocsDir.path, nomFichier));
          }
        }
      }

      return dossierDestination.path;
    } catch (e) {
      print('Erreur lors de la sauvegarde : $e');
      return null;
    }
  }
}