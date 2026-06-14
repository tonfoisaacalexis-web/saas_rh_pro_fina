import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/employe.dart';

class DatabaseService {
  static Isar? _isar;

  static Isar get db {
    if (_isar == null) {
      throw Exception("La base de données Isar n'a pas été initialisée.");
    }
    return _isar!;
  }

  /// 🚀 Initialisation stable Isar v3
  static Future<void> initialiser() async {
    if (_isar != null) return;

    final dir = await getApplicationDocumentsDirectory();

    _isar = await Isar.open(
      [EmployeSchema], 
      directory: dir.path,
    );
  }

  /// ➕ Enregistrer un membre du personnel
  Future<void> sauvegarderEmploye(Employe employe) async {
    await db.writeTxn(() async {
      await db.employes.put(employe);
    });
  }

  /// 🔍 Récupérer tout le personnel
  Future<List<Employe>> recupererToutLePersonnel() async {
    return await db.employes.where().findAll();
  }

  /// 🏢 Filtrer par délégation
  Future<List<Employe>> recupererPersonnelParDelegation(String nomDelegation) async {
    return await db.employes.filter().delegationEqualTo(nomDelegation).findAll();
  }

  /// 🆔 Rechercher par matricule
  Future<Employe?> rechercherParMatricule(String matricule) async {
    return await db.employes.filter().matriculeEqualTo(matricule).findFirst();
  }

  /// ❌ Supprimer un employé
  Future<void> supprimerEmploye(int id) async {
    await db.writeTxn(() async {
      await db.employes.delete(id);
    });
  }
}