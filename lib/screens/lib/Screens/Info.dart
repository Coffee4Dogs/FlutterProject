import 'package:flutter/material.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'Widgets/CustomTitleSubtitle_Widget.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  
  
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
           





          ],
        ),
      ),


      

    );
  }
}
