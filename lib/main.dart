import 'package:flutter/material.dart';
import 'screens/Get Started/GetStarted_Background.dart';
import 'screens/Get Started/GetStarted_BottomLeftButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    // Recordatorio: Solo hay un MaterialApp y un Scaffold. 
    return MaterialApp(
      home: Scaffold(
        body: 
          Stack(
          // Llamar los widgets y superponerlos (no usando row o column):
          children: [
            GetStarted_Background(),
            GetStarted_BottomLeftButton(),
          ],
        ),
      ),
    );
  }
}
