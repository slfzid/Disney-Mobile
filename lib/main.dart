// 1462100055 - Moch Sultan Fauzi

import 'package:flutter/material.dart';
import 'package:pab_055/register.dart';
import 'package:pab_055/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
