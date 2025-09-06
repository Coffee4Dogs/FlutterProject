import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/VHSBackground_Widget.dart';
import 'package:t1/Screens/Widgets/LoginTitle_Widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            
            
            VHSBackground_Widget(), 
            LoginTitle_Widget(),

            
          ],
        ),
      ),


      // Scaffold(
      //   backgroundColor: Color.fromARGB(255, 146, 230, 43),

      //   body: Text("akdfhklahsdlfkjhldsfkja", style: TextStyle(color: Color.fromARGB(255, 249, 249, 249)),),
      // ),

    );
  }
}
