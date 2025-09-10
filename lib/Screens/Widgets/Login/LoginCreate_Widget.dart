import 'package:flutter/material.dart';
import 'package:t1/Screens/CreateAccount.dart';
// import 'package:t1/Screens/TestSection.dart';


class LoginCreate_Widget extends StatefulWidget {
  const LoginCreate_Widget({super.key});

  @override
  State<LoginCreate_Widget> createState() => _LoginCreate_WidgetState();
}

class _LoginCreate_WidgetState extends State<LoginCreate_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      // Button Position/Alignment:
      // alignment: const Alignment(-0.76, 0.858),

      alignment: const Alignment(-0.76, 0.4),

      child: ElevatedButton(
        
        // Button Colors:  
        style: ElevatedButton.styleFrom(
          
          // Color de fondo:
          backgroundColor: const Color.fromARGB(200, 0, 88, 203),
          
          // Color Letra:
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          
          // Color de sombra:
          // - Completamente transparente para eliminarla.
          shadowColor: const Color.fromARGB(0, 0, 0, 0), 
          

          // Button Size:
          fixedSize: const Size(170, 46),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),
          ),


          
        ),
        onPressed: () {

          print("Presionando el boton de Login...");

          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccount()));

          print('Login!!! Boton presionado');


        },
        
        // Button Text:
        child: const Text(
          "Create Account", textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}








// class LoginButton_Widget extends StatefulWidget {
//   const LoginButton_Widget({super.key});

//   @override
//   State<LoginButton_Widget> createState() => _LoginButton_WidgetState();
// }

// class _LoginButton_WidgetState extends State<LoginButton_Widget> {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       // Button Position/Alignment:
//       // alignment: const Alignment(-0.76, 0.858),

//       alignment: const Alignment(0.76, 0.2),

//       child: ElevatedButton(
        
//         // Button Colors:  
//         style: ElevatedButton.styleFrom(
          
//           // Color de fondo:
//           backgroundColor: const Color.fromARGB(255, 219, 16, 36),
          
//           // Color Letra:
//           foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          
//           // Color de sombra:
//           // - Completamente transparente para eliminarla.
//           shadowColor: const Color.fromARGB(0, 0, 0, 0), 
          

//           // Button Size:
//           fixedSize: const Size(132, 46),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(200),
//           ),


          
//         ),
//         onPressed: () {

//           print("Presionando el boton de Login...");

//           Navigator.of(context).push(MaterialPageRoute(builder: (context) => TestSection()));

//           print('Login!!! Boton presionado');


//         },
        
//         // Button Text:
//         child: const Text(
//           "Login",
//           style: TextStyle(fontSize: 16),
//         ),
//       ),
//     );
//   }
// }






