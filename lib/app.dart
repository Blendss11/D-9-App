import 'package:d9/features/autentication/screens/splash/splash.dart';
import 'package:flutter/material.dart';

import 'package:d9/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      home: SplashScreen(),
    );
  }
}
