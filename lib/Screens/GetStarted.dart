import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/GetStarted/InfoButton_Widget.dart';
import 'package:t1/Screens/Widgets/GetStarted/DarkBackground_Widget.dart';
import 'package:t1/Screens/Widgets/GetStarted/ContinueButton_Widget.dart';
import 'Widgets/StandardButton_Widget.dart';





class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}





class _GetStartedState extends State<GetStarted> {

  void funcion1(){
    print("123333333");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DarkBackground_Widget(),
          LegalButton_Widget(),
          ContinueButton_Widget(),
            // // 132, 46
          StandardButton_Widget("hola jack", 0, 0, Colors.green, Colors.white, 132, 46, 200, funcion1),
          // StandardButton_Widget("123456", 0.5, 0.8, const Color.fromARGB(255, 14, 148, 177), Colors.white, 50 , 50, 100, print("hola")),
          
          
        ],
      ),
    );
  }
}