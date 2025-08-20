import 'package:flutter/material.dart';
// import 'HomeScreen.dart';


void main(){
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
    return MaterialApp(
      home: Scaffold(

        // usa el mismo color 
        backgroundColor: Color.fromARGB(255, 16, 21, 17),
        

        body: Center(
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                "assets/dark_bg.jpg",
                fit: BoxFit.cover, // Ajusta como se llena el espacio de la imagen
              ),
            ),
          ],
        ),
      ),





      ),
    );
  }
}