import 'package:flutter/material.dart';
import 'package:t1/Screens/Login.dart';

Widget StandardButton_Widget (

  // 0.76, 0.845
  // 132, 46
  
  String text_button,
  double x_alignment,
  double y_alignment,
  Color bg_color,
  Color fg_color,
  double x_size,
  double y_size,
  double border_radius,
  final VoidCallback onPressed_function,

){
  return Align(

      alignment: Alignment(x_alignment, y_alignment),

      child: ElevatedButton(
        
        // Button Colors:  
        style: ElevatedButton.styleFrom(
          
          // Color de fondo:
          // backgroundColor: const Color.fromARGB(255, 190, 11, 29),
          backgroundColor: bg_color,
          
          // Color Letra:
          foregroundColor: fg_color,
          
          // Color de sombra:
          // - Completamente transparente para eliminarla.
          shadowColor: const Color.fromARGB(0, 0, 0, 0), 
          

          // Button Size:
          fixedSize: Size(x_size, y_size),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(border_radius),
          ),


          
        ),
        onPressed: () {


          print("Presionando el boton de Continue...");

          onPressed_function();
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));


          print('Continue!!! Boton presionado');


        },
        
        // Button Text:
        // child: const Text(
        //   // "Continue",
        //   style: TextStyle(fontSize: 16),
        // ),

        child: Text(
          text_button,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );




}

