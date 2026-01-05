import 'package:abadifarm/app/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Abadi Farm",
      home: SplashScreen(),
      getPages: AppPages.routes,
    ),
  );
}
