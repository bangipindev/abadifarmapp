import 'package:abadifarm/app/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      title: "Abadi Farm",
      home: SplashScreen(),
      getPages: AppPages.routes,
    ),
  );
}
