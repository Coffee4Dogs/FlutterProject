import 'package:flutter/material.dart';
import 'package:t1/Screens/CreateAccount.dart';
import 'package:t1/Screens/TestSection.dart';
import 'package:t1/Screens/Widgets/CustomButton_Widget.dart';
import 'package:t1/Screens/Widgets/CustomLoginForm_Widget.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'GetStarted.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  CreateAccount_Function(){
    print("Se esta haciendo CreateAccount");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccount()));
  }
  
  Login_Function(){
    print("Se esta haciendo Login!");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TestSection()));
  }

  LoadGetStartedPage_function(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GetStarted()));
  }
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            
            // Background:
            CustomBackground_Widget("assets/bg1.jpg"),

            // VHSBackground_Widget(), 
            CustomLoginForm_Widget(),

            // CreateAccount Button:
            CustomButton_Widget("Create Account", -0.76, 0.4, const Color.fromARGB(255, 207, 82, 19), const Color.fromARGB(255, 255, 255, 255), 152, 46, 16, CreateAccount_Function,),
            
            // Login Button:
            CustomButton_Widget("Login", 0.76, 0.4, const Color.fromARGB(255, 238, 117, 65), const Color.fromARGB(255, 255, 255, 255), 122, 46, 16, Login_Function,),

            // Back (Login):
            CustomButton_Widget("Back", -0.74, 0.9, const Color.fromARGB(255, 22, 22, 22), Colors.white, 140, 46, 16, LoadGetStartedPage_function),
      


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