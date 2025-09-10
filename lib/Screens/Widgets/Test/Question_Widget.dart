import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String questionText; // <-- propiedad para el texto

  const QuestionWidget({
    super.key,
    required this.questionText, // <-- requerido al construir el widget
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      
      alignment: AlignmentGeometry.xy(0, -0.93),


      child: Wrap(
        
        // shrinkWrap: true,
        children: [
          Text(
            questionText, // <-- se usa el parámetro aquí
            style: TextStyle(
              color: Color.fromARGB(255, 21, 21, 21),
              fontSize: 40,
              backgroundColor: Color.fromARGB(232, 15, 15, 211),
              
            ),
            
          ),
        ],
      ),
    );
  }
}
