import 'package:flutter/material.dart';

class ContinueButton_Widget extends StatelessWidget {
  const ContinueButton_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      // Button Position/Alignment:
      // alignment: const Alignment(-0.76, 0.858),

      alignment: const Alignment(0.76, 0.845),

      child: ElevatedButton(
        
        // Button Colors:  
        style: ElevatedButton.styleFrom(
          
          // Color de fondo:
          backgroundColor: const Color.fromARGB(255, 89, 11, 190),
          
          // Color Letra:
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          
          // Color de sombra:
          // - Completamente transparente para eliminarla.
          shadowColor: const Color.fromARGB(0, 0, 0, 0), 
          

          // Button Size:
          fixedSize: const Size(132, 46),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
          ),


          
        ),
        onPressed: () {
          print('Continue!!! Boton presionado');
        },
        
        // Button Text:
        child: const Text(
          "Continue",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
