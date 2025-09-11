// import 'package:flutter/material.dart';

// class QuestionWidget extends StatelessWidget {
//   final String questionText; // <-- propiedad para el texto

//   const QuestionWidget({
//     super.key,
//     required this.questionText, // <-- requerido al construir el widget
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Align(
      
//       alignment: AlignmentGeometry.xy(0, -0.83),


//       child: Wrap(
        
//         // shrinkWrap: true,
//         children: [
//           Text(
//             questionText, // <-- se usa el parámetro aquí
//             style: TextStyle(
//               color: Color.fromARGB(255, 21, 21, 21),
//               fontSize: 40,
//               backgroundColor: Color.fromARGB(232, 15, 15, 211),
              
//             ),
            
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

Widget Question_Widget(
  String Question, 
  // double x_alignment, double y_alignment, 
  ) {
  
  
  return Align(
  alignment: Alignment(0, -0.8),
  
  child: Container(
    margin: EdgeInsets.all(30),
    padding: EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 221, 221, 221), // Fondo negro
      border: Border.all(
        color: const Color.fromARGB(255, 19, 19, 19), // Borde blanco
        width: 0.3,
      ),
      borderRadius: BorderRadius.circular(26), // Esquinas redondeadas
    ),
    child: Text(
      Question,
      style: TextStyle(
        fontSize: 20,
        color: Color.fromARGB(255, 9, 9, 9),
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  ),
);



}