import 'package:flutter/material.dart';
//import 'package:sayaranew/screens/crud_operation_screen.dart';
import 'firebase_options.dart';
import 'screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MaterialApp(
      title: "Sayara App",
      home: MyApp(),
    ),
  );
}
