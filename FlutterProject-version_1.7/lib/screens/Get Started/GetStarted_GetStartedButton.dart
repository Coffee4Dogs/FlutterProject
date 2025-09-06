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
          backgroundColor: const Color.fromARGB(255, 190, 11, 53),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          
          // Button Size:
          fixedSize: const Size(152, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
          ),
        ),
        onPressed: () {
          print('GET STARTED!!! Boton presionado');
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
