import 'package:d9/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:d9/app.dart';
import 'package:d9/utils/theme/theme.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      // .then((FirebaseApp value) => Get.put(AuthentificationRepository()));
  runApp(const App());
}
