import 'package:flutter/material.dart';
import '../services/licence_service.dart';
import '../main.dart';

class LicenceVerrouScreen extends StatefulWidget {
  const LicenceVerrouScreen({super.key});

  @override
  State<LicenceVerrouScreen> createState() => _LicenceVerrouScreenState();
}

class _LicenceVerrouScreenState extends State<LicenceVerrouScreen> {
  final _licenceService = LicenceService();
  final _cleController = TextEditingController();
  String _codeMachine = "Chargement...";
  String _messageErreur = "";

  @override
  void initState() {
    super.initState();
    _recupererCode();
  }

  Future<void> _recupererCode() async {
    final code = await _licenceService.obtenirCodeMachine();
    setState(() {
      _codeMachine = code;
    });
  }

   Future<void> _validerActivation() async {
    final cleSaisie = _cleController.text.trim().toUpperCase();
    if (cleSaisie.isEmpty) return;

    // L'application va tester les dates d'expiration possibles
    final maintenant = DateTime.now();
    String moisAnneeExpiration = "";
    bool cleTrouvee = false;

    // On teste si la clé correspond à une expiration dans les 12 à 15 prochains mois
    for (int i = 11; i <= 14; i++) {
      final futur = DateTime(maintenant.year, maintenant.month + i, 1);
      final String moisStr = futur.month.toString().padLeft(2, '0');
      final String testDate = "$moisStr-${futur.year}";
      
      if (_licenceService.calculerClePourDate(_codeMachine, testDate) == cleSaisie) {
        moisAnneeExpiration = testDate;
        cleTrouvee = true;
        break;
      }
    }

    if (cleTrouvee) {
      // On enregistre le couple clé + date de fin valide
      await _licenceService.sauvegarderLicence(cleSaisie, moisAnneeExpiration);
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PageAccueilRH()),
      );
    } else {
      setState(() {
        _messageErreur = "Clé d'activation incorrecte, falsifiée ou expirée.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(32.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 15, spreadRadius: 2),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.lock_person, size: 60, color: Colors.blue),
              const SizedBox(height: 15),
              const Text(
                'Activation Requise',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Licence annuelle : 5 000 FCFA / an\nVeuillez fournir le code machine ci-dessous à l\'éditeur pour obtenir votre clé unique de déblocage.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 25),
              
              // Affichage du code machine unique
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  children: [
                    const Text('VOTRE CODE MACHINE UNIQUE :', style: TextStyle(fontSize: 11, color: Colors.blue, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    SelectableText(
                      _codeMachine,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              
              TextField(
                controller: _cleController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  labelText: 'Saisir la clé d\'activation reçue',
                  border: OutlineInputBorder(),
                  hintText: 'X-XXXX-XXXX-X',
                ),
              ),
              if (_messageErreur.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(_messageErreur, style: const TextStyle(color: Colors.red, fontSize: 13), textAlign: TextAlign.center),
              ],
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _validerActivation,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                  child: const Text('Activer le logiciel', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}