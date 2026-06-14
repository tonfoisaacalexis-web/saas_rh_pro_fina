import 'dart:convert';
import 'package:crypto/crypto.dart';

class GenerateurClesRH {
  /// 🔑 Calcule la clé de 365 jours d'abonnement
  String calculerCleClient(String codeMachineClient, String moisAnneeExpiration) {
    final codePropre = codeMachineClient.trim().toUpperCase();
    final datePropre = moisAnneeExpiration.trim(); // ex: "06-2027"
    
    final chaineAHasher = "$codePropre-SAAS-RH-SECRET-$datePropre";
    
    final bytes = utf8.encode(chaineAHasher);
    final hashComplet = sha256.convert(bytes).toString().toUpperCase();
    
    return hashComplet.substring(10, 22);
  }
}

void main() {
  final generateur = GenerateurClesRH();
  
  // Exemple concret pour votre client du 12/06/2026 :
  // Son abonnement de 365 jours se terminera en Juin 2027 (06-2027)
  String codeClient = "00610E64E0B9"; 
  String dateFin = "06-2027"; 
  
  String cleGeneree = generateur.calculerCleClient(codeClient, dateFin);
  
  print("--- NOUVEAU GÉNÉRATEUR DE CLÉS DATE À DATE ---");
  print("Code Machine Client : $codeClient");
  print("Mois/Année Fin Abo  : $dateFin (Valide jusqu'au 30 Juin 2027)");
  print("Clé à lui donner    : $cleGeneree");
}