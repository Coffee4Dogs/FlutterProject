import 'package:flutter/material.dart';
import 'package:t1/Screens/TestSection.dart';


class LoginButton_Widget extends StatefulWidget {
  const LoginButton_Widget({super.key});

  @override
  State<LoginButton_Widget> createState() => _LoginButton_WidgetState();
}

class _LoginButton_WidgetState extends State<LoginButton_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      // Button Position/Alignment:
      // alignment: const Alignment(-0.76, 0.858),

      alignment: const Alignment(0.76, 0.4),

      child: ElevatedButton(
        
        // Button Colors:  
        style: ElevatedButton.styleFrom(
          
          // Color de fondo:
          backgroundColor: const Color.fromARGB(200, 238,0,0),
          
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

          print("Presionando el boton de Login...");

          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TestSection()));

          print('Login!!! Boton presionado');


        },
        
        // Button Text:
        child: const Text(
          "Login", textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}






