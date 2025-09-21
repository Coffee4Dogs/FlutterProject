import 'package:flutter/material.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'Widgets/CustomTitleSubtitle_Widget.dart';
import 'Widgets/CustomButton_Widget.dart';
import 'GetStarted.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  

  void LoadGetStartedPage_function(){
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
            CustomBackground_Widget("assets/bg5.jpg"),
            
            // Logo Image:
            Align(
              alignment: AlignmentGeometry.xy(0, 0),
              child: 
              AspectRatio(
                aspectRatio: 16 / 9, 
                child: Image.asset('assets/icon.png'),
              ),
            ), 

            // Texto Abajo:
            CustomTitleSubtitle_Widget(0, 0.4, "Desarrollado por:", "Delta Labs Group"),
           
            // Back (Login):
            CustomButton_Widget("Back", -0.74, 0.9, const Color.fromARGB(255, 22, 22, 22), Colors.white, 140, 46, 16, LoadGetStartedPage_function),
      




          ],
        ),
      ),


      

    );
  }
}
