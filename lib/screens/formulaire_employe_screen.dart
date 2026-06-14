import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/employe.dart';
import '../services/database_service.dart';
import '../services/media_service.dart';

class FormulaireEmployeScreen extends StatefulWidget {
  const FormulaireEmployeScreen({super.key});

  @override
  State<FormulaireEmployeScreen> createState() => _FormulaireEmployeScreenState();
}

class _FormulaireEmployeScreenState extends State<FormulaireEmployeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _databaseService = DatabaseService();
  final _mediaService = MediaService();

  // Contrôleurs des champs textuels
  final _matriculeController = TextEditingController();
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _posteController = TextEditingController();
  final _departementController = TextEditingController();
  final _arrondissementController = TextEditingController();
  final _structureController = TextEditingController();
  final _telephoneController = TextEditingController();
  final _adresseController = TextEditingController();
  final _motDePasseController = TextEditingController();

  String? _delegationSelectionnee;
  bool _masquerMotDePasse = true;

  // Variables de stockage des chemins de fichiers locaux scannés
  String? _photoPath;
  String? _cniPath;
  String? _acteNaissancePath;
  String? _acteMariagePath;
  String? _diplomePath;
  String? _ribPath;

  // Liste officielle des 10 régions du Cameroun
  final List<String> _delegations = [
    'Adamaoua', 'Centre', 'Est', 'Extrême-Nord', 
    'Littoral', 'Nord', 'Nord-Ouest', 'Ouest', 'Sud', 'Sud-Ouest'
  ];

  Future<void> _capturerPhoto() async {
    final chemin = await _mediaService.selectionnerPhotoPersonnel(ImageSource.camera);
    if (chemin != null) setState(() => _photoPath = chemin);
  }

  Future<void> _scannerDocument(String type) async {
    final chemin = await _mediaService.selectionnerDocumentScanner();
    if (chemin == null) return;
    
    setState(() {
      switch (type) {
        case 'cni': _cniPath = chemin; break;
        case 'naissance': _acteNaissancePath = chemin; break;
        case 'mariage': _acteMariagePath = chemin; break;
        case 'diplome': _diplomePath = chemin; break;
        case 'rib': _ribPath = chemin; break;
      }
    });
  }

  Future<void> _enregistrerFormulaire() async {
    if (!_formKey.currentState!.validate()) return;

    final agent = Employe()
      ..matricule = _matriculeController.text.trim()
      ..nom = _nomController.text.trim()
      ..prenom = _prenomController.text.trim()
      ..poste = _posteController.text.trim()
      ..delegation = _delegationSelectionnee
      ..departement = _departementController.text.trim()
      ..arrondissement = _arrondissementController.text.trim()
      ..structureEmploye = _structureController.text.trim()
      ..telephone = _telephoneController.text.trim()
      ..adresseComplete = _adresseController.text.trim()
      ..motDePasse = _motDePasseController.text.trim()
      ..photoPath = _photoPath
      ..cniPath = _cniPath
      ..acteNaissancePath = _acteNaissancePath
      ..acteMariagePath = _acteMariagePath
      ..diplomePath = _diplomePath
      ..ribPath = _ribPath
      ..dateEnregistrement = DateTime.now();

    await _databaseService.sauvegarderEmploye(agent);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Fiche agent et documents enregistrés localement !')),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nouvel Enregistrement Agent'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 📸 Bloc Capture Photo de profil
              Center(
                child: GestureDetector(
                  onTap: _capturerPhoto,
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 3),
                      image: _photoPath != null 
                          ? DecorationImage(image: FileImage(File(_photoPath!)), fit: BoxFit.cover) 
                          : null,
                    ),
                    child: _photoPath == null ? const Icon(Icons.camera_alt, size: 40, color: Colors.blue) : null,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              const Text('Identité & Contacts', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue)),
              const Divider(),
              TextFormField(controller: _matriculeController, decoration: const InputDecoration(labelText: 'Matricule Unique *'), validator: (v) => v!.isEmpty ? 'Requis' : null),
              TextFormField(controller: _nomController, decoration: const InputDecoration(labelText: 'Nom *'), validator: (v) => v!.isEmpty ? 'Requis' : null),
              TextFormField(controller: _prenomController, decoration: const InputDecoration(labelText: 'Prénom')),
              TextFormField(controller: _telephoneController, decoration: const InputDecoration(labelText: 'N° de Téléphone'), keyboardType: TextInputType.phone),
              TextFormField(controller: _adresseController, decoration: const InputDecoration(labelText: 'Adresse Complète')),
              
              const SizedBox(height: 25),
              const Text('Affectation Administrative (Cameroun)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue)),
              const Divider(),
              DropdownButtonFormField<String>(
                value: _delegationSelectionnee,
                hint: const Text('Sélectionner la Région / Délégation *'),
                items: _delegations.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
                onChanged: (v) => setState(() => _delegationSelectionnee = v),
                validator: (v) => v == null ? 'Veuillez sélectionner une région' : null,
              ),
              TextFormField(controller: _departementController, decoration: const InputDecoration(labelText: 'Département')),
              TextFormField(controller: _arrondissementController, decoration: const InputDecoration(labelText: 'Arrondissement')),
              TextFormField(controller: _posteController, decoration: const InputDecoration(labelText: 'Poste Occupé')),
              TextFormField(controller: _structureController, decoration: const InputDecoration(labelText: 'Structure qui l\'emploie (ex: École...)')),

              const SizedBox(height: 25),
              const Text('Sécurité & Accès Personnel', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue)),
              const Divider(),
              TextFormField(
                controller: _motDePasseController,
                obscureText: _masquerMotDePasse,
                decoration: InputDecoration(
                  labelText: 'Mot de passe sécurisé de l\'agent *',
                  suffixIcon: IconButton(
                    icon: Icon(_masquerMotDePasse ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => _masquerMotDePasse = !_masquerMotDePasse),
                  ),
                ),
                validator: (v) => v!.isEmpty ? 'Un mot de passe est obligatoire pour protéger ces données sensibles' : null,
              ),

              const SizedBox(height: 30),
              const Text('Numérisation des Pièces Jointes (100% Offline)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue)),
              const Divider(),
              
              _buildScanTile('Carte Nationale d\'Identité (CNI)', _cniPath, () => _scannerDocument('cni')),
              _buildScanTile('Acte de Naissance', _acteNaissancePath, () => _scannerDocument('naissance')),
              _buildScanTile('Acte de Mariage', _acteMariagePath, () => _scannerDocument('mariage')),
              _buildScanTile('Diplômes Académiques / Professionnels', _diplomePath, () => _scannerDocument('diplome')),
              _buildScanTile('Relevé d\'Identité Bancaire (RIB)', _ribPath, () => _scannerDocument('rib')),

              const SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _enregistrerFormulaire,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Valider et Sauvegarder l\'Agent', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScanTile(String titre, String? chemin, VoidCallback surClic) {
    final bool scanne = chemin != null;
    return ListTile(
      leading: Icon(scanne ? Icons.check_circle : Icons.picture_as_pdf, color: scanne ? Colors.green : Colors.grey),
      title: Text(titre),
      subtitle: Text(scanne ? 'Document indexé avec succès' : 'Document manquant', style: TextStyle(color: scanne ? Colors.green : Colors.red)),
      trailing: ElevatedButton(
        onPressed: surClic,
        style: ElevatedButton.styleFrom(backgroundColor: scanne ? Colors.green.shade50 : Colors.blue.shade50),
child: Text(scanne ? 'Remplacer' : 'Scanner / Joindre'),),);}}    