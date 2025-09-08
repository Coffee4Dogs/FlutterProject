import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/Question_Widget.dart';
import 'package:t1/Screens/Widgets/TestBackground_Widget.dart';


class TestSection extends StatefulWidget {
  const TestSection({super.key});

  @override
  State<TestSection> createState() => _TestSectionState();
}

class _TestSectionState extends State<TestSection> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(


      body: Stack(
      children: [
        TestBackground_Widget(),
        QuestionWidget(questionText: "kajdhkslfjhglksjhfglskjfhglksjfhglskfjhglksjhgklfdsjgfhja"),
      ],
  
      ),



      // body: Center(
      //   child: QuestionWidget(questionText: "hola12345"),
      // ) 
      
      
    );
  }
}