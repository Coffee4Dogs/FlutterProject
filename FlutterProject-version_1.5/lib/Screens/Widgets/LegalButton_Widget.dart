import 'package:flutter/material.dart';

class LegalButton_Widget extends StatelessWidget {
  const LegalButton_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      // Button Position/Alignment:
      // alignment: const Alignment(-0.76, 0.858),

      alignment: const Alignment(0, 0.96),

      child: ElevatedButton(
        
        // Button Colors:  
        style: ElevatedButton.styleFrom(
          
          // Color de fondo:
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          
          // Color Letra:
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          
          // Color de sombra:
          // - Completamente transparente para eliminarla.
          shadowColor: const Color.fromARGB(0, 0, 0, 0), 
          
          // Button Size:
          fixedSize: const Size(100, 38),
          shape: RoundedRectangleBorder(

            // Button Border-Radio:
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          print('LEGAL!!! Boton presionado');
        },
        
        // Button Text:
        child: const Text(
          "LEGAL",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
