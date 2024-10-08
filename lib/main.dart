import 'package:flutter/material.dart';
import 'package:getx_yt/utility%20of%20Getx/home_page.dart';
import 'package:get/get.dart';
import 'package:getx_yt/utility%20of%20Getx/launguage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX YT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      translations: Launguage(),
      fallbackLocale: const Locale('en', 'US'),
      locale: const Locale('en', 'US'),
      home: const HomePage(),
    );
  }
}
