import 'package:flutter/widgets.dart';

Widget CustomBackground_Widget(
  String ImageUrl,
){


  return Container(
      // backgroundColor (solo por si a caso, mostrara el mismo color de la imagen.)
      color: const Color.fromARGB(255, 16, 21, 17),
      child: Center(

        // Imagen de fondo:
        child: Image.asset(
          ImageUrl,
          fit: BoxFit.cover, 
          width: double.infinity,
          height: double.infinity,
          
          
        ),
        
        
      ),
    );
}