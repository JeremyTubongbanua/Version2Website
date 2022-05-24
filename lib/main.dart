import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:version2_website/screens/about_screen.dart';
import 'package:version2_website/screens/home_screen.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final MaterialApp app = MaterialApp(
    routes: {
      HomeScreen.id: (ctx) => HomeScreen(),
      AboutScreen.id: (ctx) => AboutScreen(),
    },
  );
  runApp(app);
}
