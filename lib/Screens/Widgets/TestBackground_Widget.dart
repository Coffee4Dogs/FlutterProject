import 'package:flutter/material.dart';

class TestBackground_Widget extends StatefulWidget {
  const TestBackground_Widget({super.key});

  @override
  State<TestBackground_Widget> createState() => _TestBackground_WidgetState();
}

class _TestBackground_WidgetState extends State<TestBackground_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // backgroundColor (solo por si a caso, mostrara el mismo color de la imagen.)
      color: const Color.fromARGB(255, 16, 21, 17),
      child: Center(

        // Imagen de fondo:
        child: Image.asset(
          "assets/pexels-vladbagacian-1061623.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}