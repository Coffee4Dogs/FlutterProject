import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/GetStarted/InfoButton_Widget.dart';
import 'package:t1/Screens/Widgets/GetStarted/DarkBackground_Widget.dart';
import 'package:t1/Screens/Widgets/GetStarted/ContinueButton_Widget.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DarkBackground_Widget(),
          LegalButton_Widget(),
          ContinueButton_Widget(),

          
        ],
      ),
    );
  }
}