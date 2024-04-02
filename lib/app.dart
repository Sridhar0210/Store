import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: StoreTheme.lightTheme,
      darkTheme: StoreTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: CircularProgressIndicator(
            color: StoreColors.secondary,
          ),
        ),
      ),
    );
  }
}
