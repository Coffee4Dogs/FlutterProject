import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/Login/LoginBackground_Widget.dart';
import 'package:t1/Screens/Widgets/Login/LoginCreate_Widget.dart';
import 'package:t1/Screens/Widgets/Login/LoginTitle_Widget.dart';
import 'Widgets/Login/LoginButton_Widget.dart';

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
            LoginButton_Widget(),
            LoginCreate_Widget(),

            
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
