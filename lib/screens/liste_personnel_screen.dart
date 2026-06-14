import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../models/employe.dart';
import '../services/database_service.dart';
import 'details_employe_screen.dart';

class ListePersonnelScreen extends StatefulWidget {
  const ListePersonnelScreen({super.key});

  @override
  State<ListePersonnelScreen> createState() => _ListePersonnelScreenState();
}

class _ListePersonnelScreenState extends State<ListePersonnelScreen> {
  final _databaseService = DatabaseService();
  List<Employe> _employes = [];
  String? _delegationFiltre;

  final List<String> _delegations = [
    'Toutes', 'Adamaoua', 'Centre', 'Est', 'Extrême-Nord', 
    'Littoral', 'Nord', 'Nord-Ouest', 'Ouest', 'Sud', 'Sud-Ouest'
  ];

  @override
  void initState() {
    super.initState();
    _chargerPersonnel();
  }

  Future<void> _chargerPersonnel() async {
    List<Employe> resultat;
    if (_delegationFiltre == null || _delegationFiltre == 'Toutes') {
      resultat = await _databaseService.recupererToutLePersonnel();
    } else {
      resultat = await _databaseService.recupererPersonnelParDelegation(_delegationFiltre!);
    }
    setState(() {
      _employes = resultat;
    });
  }

  /// 📊 Génère et enregistre le fichier Excel/CSV localement
  Future<void> _exporterEnExcel() async {
    if (_employes.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Le répertoire est vide. Rien à exporter.')),
      );
      return;
    }

    StringBuffer csvContenu = StringBuffer();
    csvContenu.writeln('Matricule;Nom;Prénom;Téléphone;Région;Département;Arrondissement;Poste;Structure;Date Enregistrement');

    for (var agent in _employes) {
      csvContenu.writeln(
        '${agent.matricule ?? ""};'
        '${agent.nom ?? ""};'
        '${agent.prenom ?? ""};'
        '${agent.telephone ?? ""};'
        '${agent.delegation ?? ""};'
        '${agent.departement ?? ""};'
        '${agent.arrondissement ?? ""};'
        '${agent.poste ?? ""};'
        '${agent.structureEmploye ?? ""};'
        '${agent.dateEnregistrement ?? ""}'
      );
    }

    String? cheminSelectionne = await FilePicker.platform.saveFile(
      dialogTitle: 'Enregistrer le fichier Excel du Personnel',
      fileName: 'repertoire_personnel_${DateTime.now().year}.csv',
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (cheminSelectionne != null) {
      try {
        final File fichier = File(cheminSelectionne);
        await fichier.writeAsString(csvContenu.toString());
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.green, content: Text('Fichier Excel exporté avec succès dans : $cheminSelectionne')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text('Erreur lors de l\'écriture du fichier : $e')),
        );
      }
    }
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Répertoire du Personnel'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Filtrer par Région : ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _delegationFiltre ?? 'Toutes',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    items: _delegations.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
                    onChanged: (valeur) {
                      setState(() {
                        _delegationFiltre = valeur;
                      });
                      _chargerPersonnel();
                    },
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: _exporterEnExcel,
                  icon: const Icon(Icons.description, color: Colors.white),
                  label: const Text('Exporter Excel', style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _employes.isEmpty
                  ? const Center(
                      child: Text(
                        'Aucun agent enregistré pour cette sélection.',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          showCheckboxColumn: false,
                          columns: const [
                            DataColumn(label: Text('Photo')),
                            DataColumn(label: Text('Matricule')),
                            DataColumn(label: Text('Nom & Prénom')),
                            DataColumn(label: Text('Poste')),
                            DataColumn(label: Text('Région / Délégation')),
                          ],
                          rows: _employes.map((agent) {
                            return DataRow(
                              onSelectChanged: (selectionne) {
                                if (selectionne != null && selectionne) {
                                  final TextEditingController passwordCheckController = TextEditingController();
                                  bool obscurcirText = true;

                                  showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) {
                                      return StatefulBuilder(
                                        builder: (context, setStateDialog) {
                                          return AlertDialog(
                                            title: Row(
                                              children: [
                                                const Icon(Icons.lock, color: Colors.redAccent),
                                                const SizedBox(width: 10),
                                                Text('Accès Sécurisé : ${agent.nom ?? ''}'),
                                              ],
                                            ),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text('Ces données sont sensibles.\nVeuillez saisir le mot de passe de l\'agent.'),
                                                const SizedBox(height: 15),
                                                TextField(
                                                  controller: passwordCheckController,
                                                  obscureText: obscurcirText,
                                                  decoration: InputDecoration(
                                                    labelText: 'Mot de passe agent',
                                                    border: const OutlineInputBorder(),
                                                    suffixIcon: IconButton(
                                                      icon: Icon(obscurcirText ? Icons.visibility_off : Icons.visibility),
                                                      onPressed: () => setStateDialog(() => obscurcirText = !obscurcirText),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  passwordCheckController.clear();
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Annuler', style: TextStyle(color: Colors.grey)),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  if (passwordCheckController.text == agent.motDePasse) {
                                                    Navigator.pop(context);
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => DetailsEmployeScreen(agent: agent),
                                                      ),
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                      const SnackBar(
                                                        backgroundColor: Colors.red,
                                                        content: Text('Mot de passe incorrect. Accès refusé.'),
                                                      ),
                                                    );
                                                  }
                                                },
                                                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                                                child: const Text('Déverrouiller'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  );
                                }
                              },
                              cells: [
                                DataCell(
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.grey.shade300,
                                      backgroundImage: agent.photoPath != null 
                                          ? FileImage(File(agent.photoPath!)) 
                                          : null,
                                      child: agent.photoPath == null 
                                          ? const Icon(Icons.person, size: 20) 
                                          : null,
                                    ),
                                  ),
                                ),
                                DataCell(Text(agent.matricule ?? '-')),
                                DataCell(Text('${agent.nom ?? ''} ${agent.prenom ?? ''}')),
                                DataCell(Text(agent.poste ?? '-')),
                                DataCell(Text(agent.delegation ?? '-')),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}