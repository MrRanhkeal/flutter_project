

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/app/routes.dart';
import 'package:flutter_project/screen/aba_UI.dart';
import 'package:flutter_project/screen/splash/view/splash_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      getPages: Routes().routes,
      theme: ThemeData(),

      //home: SplashView(),
      initialRoute: "/splash",
    );
  }
}