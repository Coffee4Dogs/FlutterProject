import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/Test/Question_Widget.dart';
import 'package:t1/Screens/Widgets/Test/TestBackground_Widget.dart';


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
        QuestionWidget(questionText: "eee"),
      ],
  
      ),




    );
  }
}