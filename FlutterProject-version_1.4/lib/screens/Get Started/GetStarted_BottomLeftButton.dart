import 'package:flutter/material.dart';

class GetStarted_BottomLeftButton extends StatelessWidget {
  const GetStarted_BottomLeftButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      // Button Position/Alignment:
      alignment: const Alignment(-0.76, 0.858),
      
      child: ElevatedButton(
        
        // Button Colors:  
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 19, 144, 207),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          
          // Button Size:
          fixedSize: const Size(162, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
          ),
        ),
        onPressed: () {
          print('Boton presionado');
        },
        
        // Button Text:
        child: const Text(
          "Get Started",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
