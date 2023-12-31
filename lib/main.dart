import 'package:flutter/material.dart';
import 'package:sushi_app/model/shop.dart';
import 'package:sushi_app/pages/cartPage.dart';
import 'package:sushi_app/pages/introPage.dart';
import 'package:sushi_app/pages/menuPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    )
  );
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
      home:  const IntroPage(),
      routes: {
        "/intropage":(context) => const IntroPage(),
        "/menupage":(context) => const MenuPage(),
        "/cartpage": (context) => const CartPage()
      },
    );
  }
}
