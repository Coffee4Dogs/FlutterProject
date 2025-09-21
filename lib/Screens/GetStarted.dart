import 'package:flutter/material.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'Widgets/CustomButton_Widget.dart';
import 'package:t1/Screens/Login.dart';
import 'Info.dart';




class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}





class _GetStartedState extends State<GetStarted> {

  void LoadLoginPage_function(){
    print("Loading Login!");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
  
  }

   void LoadInfoPage_function(){
    print("The function was executed correctly!");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Info()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // DarkBackground_Widget(),
          CustomBackground_Widget("assets/bg0.jpg"),
          // LegalButton_Widget(),
          // ContinueButton_Widget(),
            // // 132, 46
          CustomButton_Widget("Continuar", 0.76, 0.845, const Color.fromARGB(255, 202, 202, 202), const Color.fromARGB(255, 11, 11, 11), 132, 48, 36, LoadLoginPage_function),
          
          CustomButton_Widget("info", 0, 0.965, const Color.fromARGB(255, 31, 31, 31), const Color.fromARGB(255, 235, 235, 235), 80, 36, 10, LoadInfoPage_function),
          
        ],
      ),
    );
  }
}