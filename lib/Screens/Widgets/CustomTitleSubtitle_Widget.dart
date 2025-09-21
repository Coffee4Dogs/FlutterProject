import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

Widget CustomTitleSubtitle_Widget(
  double x_Align,
  double y_Align,
  String Title,
  String Subtitle,
) {
  return Align(
    alignment: Alignment(x_Align, y_Align), 
    child: Column(

      // Ajusta el tamaño de segun que tan grande es el texto
      mainAxisSize: MainAxisSize.min, 
      
      children: [
        
        // Titulo con bold:
        Text(
          Title,
          style: const TextStyle(
            color: Color.fromARGB(255, 254, 254, 254),
            fontSize: 20,
            fontWeight: FontWeight.bold, // título más destacado
          ),
          textAlign: TextAlign.center,
        ),

        // Para separar
        const SizedBox(height: 5), 
        
        // Subtitulo sin Bold
        Text(
          Subtitle,
          style: const TextStyle(
            color: Color.fromARGB(255, 254, 254, 254),
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),

        
      ],

    ),
  );
}
