import 'package:e_learn/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'storage/StorageServices.dart';

class Global {
  static late StorageServices storageServices;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
        // FirebaseMessaging.onBackgroundMessage(LocalNotificationService.backgroundHandler);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    storageServices = await StorageServices().init();
  }
}
