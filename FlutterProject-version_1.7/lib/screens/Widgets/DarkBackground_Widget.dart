import 'package:flutter/material.dart';

class DarkBackground_Widget extends StatefulWidget {
  const DarkBackground_Widget({super.key});

  @override
  State<DarkBackground_Widget> createState() => DarkBackground_WidgetState();
}

class DarkBackground_WidgetState extends State<DarkBackground_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // backgroundColor (solo por si a caso, mostrara el mismo color de la imagen.)
      color: const Color.fromARGB(255, 16, 21, 17),
      child: Center(

        // Imagen de fondo:
        child: Image.asset(
          "assets/dark_bg.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
    



  }
}
