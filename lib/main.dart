import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webtoon_app/screens/home_screen.dart';

import 'services/customHttp.dart';

void main() {
  HttpOverrides.global = CustomHttp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
