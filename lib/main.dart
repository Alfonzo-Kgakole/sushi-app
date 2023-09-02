import 'package:flutter/material.dart';
import 'package:sushi_app/pages/introPage.dart';
import 'package:sushi_app/pages/menuPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  IntroPage(),
      routes: {
        "/intropage":(context) => const IntroPage(),
        "/menupage":(context) => const MenuPage()
      },
    );
  }
}
