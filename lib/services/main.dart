import 'package:flutter/material.dart';
import 'services/database_service.dart';
import 'services/licence_service.dart';
import 'services/backup_service.dart'; // Nouvel import
import 'screens/formulaire_employe_screen.dart';
import 'screens/liste_personnel_screen.dart';
import 'screens/licence_verrou_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseService.initialiser();
  
  final licenceService = LicenceService();
  final bool licenceActive = await licenceService.estLicenceValide();

  runApp(MyApp(licenceActive: licenceActive));
}

class MyApp extends StatelessWidget {
  final bool licenceActive;
  const MyApp({super.key, required this.licenceActive});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaaS RH Pro Offline 2026',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: licenceActive ? const PageAccueilRH() : const LicenceVerrouScreen(),
    );
  }
}

class PageAccueilRH extends StatelessWidget {
  const PageAccueilRH({super.key});

  void _declencherBackup(BuildContext context) async {
    final TextEditingController usbController = TextEditingController(text: "E:\\");
    final backupService = BackupService();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.usb, color: Colors.blue),
            SizedBox(width: 10),
            Text('Sauvegarde Sécurisée'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Veuillez insérer votre clé USB et spécifier sa lettre de lecteur sous Windows (ex: D:\\, E:\\, F:\\).'),
            const SizedBox(height: 15),
            TextField(
              controller: usbController,
              decoration: const InputDecoration(
                labelText: 'Lettre du lecteur USB',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Sauvegarde locale en cours... Ne retirez pas la clé.')),
              );
              
              final cheminResultat = await backupService.executerSauvegarde(usbController.text.trim());
              
              if (cheminResultat != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(backgroundColor: Colors.green, content: Text('Succès ! Sauvegarde copiée dans : $cheminResultat')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(backgroundColor: Colors.red, content: Text('Échec de la sauvegarde. Vérifiez la lettre du lecteur.')),
                );
              }
            },
            child: const Text('Lancer la sauvegarde'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion RH - Mode Offline'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenue dans votre SaaS RH Offline\nPrêt pour la gestion du personnel.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormulaireEmployeScreen()),
                );
              },
              icon: const Icon(Icons.person_add),
              label: const Text('Enregistrer un nouvel agent'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                minimumSize: const Size(280, 50),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListePersonnelScreen()),
                );
              },
              icon: const Icon(Icons.badge_outlined),
              label: const Text('Consulter le répertoire du personnel'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                minimumSize: const Size(280, 50),
                backgroundColor: Colors.blue.shade50,
              ),
            ),
            const SizedBox(height: 15),
            // Bouton 3 : Sauvegarde sur clé USB
            OutlinedButton.icon(
              onPressed: () => _declencherBackup(context),
              icon: const Icon(Icons.save_alt, color: Colors.orange),
              label: const Text('Sauvegarder le système sur Clé USB', style: TextStyle(color: Colors.orange)),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                minimumSize: const Size(280, 50),
                side: const BorderSide(color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}