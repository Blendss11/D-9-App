import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:d9/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  final WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  //getX local Storage
  await GetStorage.init();
  //await splash till other items loaded
  FlutterNativeSplash.preserve(widgetsBinding: binding);
  //initialize app firebase and auth res
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  .then((FirebaseApp value) => Get.put(AuthentificationRepository()));
  
  runApp(const App());
}
