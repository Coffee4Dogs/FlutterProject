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
    print("The function was executed correctly!");
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
          CustomButton_Widget("Continuar", 0.76, 0.845, const Color.fromARGB(255, 190, 11, 29), Colors.white, 132, 46, 200, LoadLoginPage_function),
          
          CustomButton_Widget("INFO", 0, 0.945, const Color.fromARGB(0, 236, 144, 91), Colors.white, 132, 46, 200, LoadInfoPage_function),
          
        ],
      ),
    );
  }
}