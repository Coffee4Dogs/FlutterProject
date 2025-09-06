import 'package:flutter/material.dart';


class VHSBackground_Widget extends StatefulWidget {
  const VHSBackground_Widget({super.key});

  @override
  State<VHSBackground_Widget> createState() => _VHSBackground_WidgetState();
}

class _VHSBackground_WidgetState extends State<VHSBackground_Widget> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();

    return Container(
      // backgroundColor (solo por si a caso, mostrara el mismo color de la imagen.)
      color: const Color.fromARGB(255, 16, 21, 17),
      child: Center(

        // Imagen de fondo:
        child: Image.asset(
          "assets/VHS_Clean.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  
  }
}

