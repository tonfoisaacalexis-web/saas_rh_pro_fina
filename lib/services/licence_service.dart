import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LicenceService {
  static const String _clePrefBase = "cle_activation_rh";
  static const String _clePrefDate = "date_expiration_rh";

  Future<String> obtenirCodeMachine() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isWindows) {
      final windowsInfo = await deviceInfo.windowsInfo;
      final rawId = "${windowsInfo.computerName}-${windowsInfo.deviceId}";
      final bytes = utf8.encode(rawId);
      return sha256.convert(bytes).toString().substring(0, 12).toUpperCase();
    }
    return "MOBILE-DEVICE";
  }

  /// 🔑 Calcule la clé attendue pour un mois et une année d'expiration précis
  String calculerClePourDate(String codeMachine, String moisAnneeExpiration) {
    final chaineAHasher = "$codeMachine-SAAS-RH-SECRET-$moisAnneeExpiration";
    final bytes = utf8.encode(chaineAHasher);
    return sha256.convert(bytes).toString().substring(10, 22).toUpperCase();
  }

  /// 🔓 Sauvegarde la clé et la date d'expiration associée (ex: "06-2027")
  Future<void> sauvegarderLicence(String cle, String moisAnneeExpiration) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_clePrefBase, cle.trim().toUpperCase());
    await prefs.setString(_clePrefDate, moisAnneeExpiration.trim());
  }

  /// 🛡️ Vérifie si la licence couvre la date du jour (365 jours réels)
  Future<bool> estLicenceValide() async {
    final prefs = await SharedPreferences.getInstance();
    final cleEnregistree = prefs.getString(_clePrefBase);
    final expirationEnregistree = prefs.getString(_clePrefDate); // format "MM-AAAA"
    
    if (cleEnregistree == null || expirationEnregistree == null) return false;

    // 1. Re-calculer la clé pour voir si elle correspond à la date d'expiration inscrite
    final codeMachine = await obtenirCodeMachine();
    final cleAttendue = calculerClePourDate(codeMachine, expirationEnregistree);
    if (cleEnregistree != cleAttendue) return false;

    // 2. Vérifier si la date d'expiration est dépassée par rapport à aujourd'hui
    try {
      final parts = expirationEnregistree.split('-');
      final int moisExp = int.parse(parts[0]);
      final int anneeExp = int.parse(parts[1]);

      final maintenant = DateTime.now();
      // On crée une date limite au dernier jour du mois d'expiration
      final dateLimite = DateTime(anneeExp, moisExp + 1, 0);

      return maintenant.isBefore(dateLimite);
    } catch (e) {
      return false;
    }
  }
}