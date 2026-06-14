import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/employe.dart';

class DetailsEmployeScreen extends StatelessWidget {
  final Employe agent;

  const DetailsEmployeScreen({super.key, required this.agent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fiche de : ${agent.nom ?? ''}'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 📸 Photo de profil circulaire optimisée
            Center(
              child: Column(
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 3),
                      image: agent.photoPath != null
                          ? DecorationImage(
                              image: FileImage(File(agent.photoPath!)),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: agent.photoPath == null
                        ? const Icon(Icons.person, size: 70, color: Colors.grey)
                        : null,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '${agent.nom ?? ''} ${agent.prenom ?? ''}',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    agent.poste ?? 'Poste non défini',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // 🏢 Section Affectation Administrative Camerounaise
            const Text('Localisation Administrative & Contacts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
            const Divider(),
            _buildInfoTile(Icons.badge, 'Matricule Unique', agent.matricule, complet: true),
            _buildInfoTile(Icons.map, 'Région / Délégation', agent.delegation),
            _buildInfoTile(Icons.location_city, 'Département', agent.departement),
            _buildInfoTile(Icons.holiday_village, 'Arrondissement', agent.arrondissement),
            _buildInfoTile(Icons.account_balance, 'Structure Employeuse', agent.structureEmploye),
            _buildInfoTile(Icons.phone, 'Téléphone', agent.telephone),
            _buildInfoTile(Icons.home, 'Adresse Complète', agent.adresseComplete),
            
            const SizedBox(height: 30),

            // 📄 Section Tous les Documents Numérisés (RIB, Diplômes inclus)
            const Text('Documents Numérisés Sécurisés (Offline)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
            const Divider(),
            _buildDocTile(context, 'Carte Nationale d\'Identité (CNI)', agent.cniPath),
            _buildDocTile(context, 'Acte de Naissance', agent.acteNaissancePath),
            _buildDocTile(context, 'Acte de Mariage', agent.acteMariagePath),
            _buildDocTile(context, 'Diplômes Académiques / Professionnels', agent.diplomePath),
            _buildDocTile(context, 'Relevé d\'Identité Bancaire (RIB)', agent.ribPath),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String titre, String? valeur, {bool complet = false}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(titre, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      subtitle: Text(valeur ?? 'Non renseigné', style: TextStyle(fontSize: 16, fontWeight: complet ? FontWeight.bold : FontWeight.normal)),
    );
  }

  Widget _buildDocTile(BuildContext context, String titre, String? cheminFichier) {
    final bool existe = cheminFichier != null && cheminFichier.isNotEmpty;
    return ListTile(
      leading: Icon(existe ? Icons.check_circle : Icons.cancel, color: existe ? Colors.green : Colors.red),
      title: Text(titre),
      subtitle: Text(existe ? 'Fichier disponible localement' : 'Document absent', 
          style: TextStyle(color: existe ? Colors.green.shade700 : Colors.red.shade700)),
      trailing: existe ? const Icon(Icons.visibility, color: Colors.blue) : null,
      onTap: existe ? () async {
        final Uri fileUri = Uri.file(cheminFichier);
        if (await canLaunchUrl(fileUri)) {
          await launchUrl(fileUri);
        }
      } : null,
    );
  }
}