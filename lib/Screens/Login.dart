import 'package:flutter/material.dart';
import 'package:t1/Screens/CreateAccount.dart';
import 'package:t1/Screens/TestSection.dart';
import 'package:t1/Screens/Widgets/CustomButton_Widget.dart';
import 'package:t1/Screens/Widgets/CustomLoginForm_Widget.dart';
import 'Widgets/CustomBackground_Widget.dart';

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
            CustomButton_Widget("Create Account", -0.76, 0.4, const Color.fromARGB(200, 0, 88, 203), const Color.fromARGB(255, 255, 255, 255), 152, 46, 50, CreateAccount_Function,),
            
            // Login Button:
            CustomButton_Widget("Login", 0.76, 0.4, const Color.fromARGB(2200, 238,0,0), const Color.fromARGB(255, 255, 255, 255), 122, 46, 50, Login_Function,),
            
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