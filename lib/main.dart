import 'package:flutter/material.dart';
import 'package:portfolio_app/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            centerTitle: true,
            elevation: 0.5,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
