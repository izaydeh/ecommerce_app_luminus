import 'package:ecomm_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Muli'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    ),
  );
}
