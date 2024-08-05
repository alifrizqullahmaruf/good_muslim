import 'package:flutter/material.dart';
import 'package:good_muslim/pages/botnav.dart';
import 'package:good_muslim/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GOOD MUSLIM',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 245, 250, 247)),
        useMaterial3: true,
      ),
      home: BotNav(),
    );
  }
}
