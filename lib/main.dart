import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template68/Controllers/controller.dart';
import 'package:template68/Views/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.indigo.shade300,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo.shade800,
            foregroundColor: Colors.white,
            centerTitle: true,
          )),
      onInit: () {
        Get.put(Controller());
      },
      home: const HomePage(),
    );
  }
}
