import 'package:isar/isar.dart';

part 'employe.g.dart';

@collection
class Employe {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? matricule;
  
  String? nom;
  String? prenom;
  String? poste;
  
  // Géographie administrative locale
  String? delegation;       // Région (ex: Sud)
  String? departement;      // ex: Océan
  String? arrondissement;   // ex: Kribi 2ème
  String? structureEmploye; // ex: École publique de Kribi 2ème
  
  // Contacts
  String? adresseComplete;
  String? telephone;

  // Sécurité et Confidentialité de l'agent
  String? motDePasse; // Stockage local du mot de passe de l'agent

  // Chemins des fichiers locaux scannés
  String? photoPath;          
  String? cniPath;            
  String? acteNaissancePath;  
  String? acteMariagePath;     // Géré maintenant
  String? diplomePath;         // Géré maintenant
  String? ribPath;             // Nouveau : Relevé d'Identité Bancaire

  DateTime? dateEnregistrement;

  Employe() {
    dateEnregistrement = DateTime.now();
  }
}