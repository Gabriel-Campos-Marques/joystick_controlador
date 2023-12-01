import 'package:carrinho/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RoboApp());
}

class RoboApp extends StatelessWidget {
  const RoboApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(120, 100, 180, 246),
        ),
        colorScheme: ColorScheme.fromSeed(
            background: Colors.white,
            seedColor: const Color.fromARGB(120, 100, 180, 246)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
