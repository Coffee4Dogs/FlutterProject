import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/Test/Question_Widget.dart';
import 'package:t1/Screens/Widgets/Test/TestBackground_Widget.dart';


class TestSection extends StatefulWidget {
  const TestSection({super.key});

  @override
  State<TestSection> createState() => _TestSectionState();
}

class _TestSectionState extends State<TestSection> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(

      

      

      body: Stack(
      children: [
        TestBackground_Widget(),
         // Question, box alignment (x, y):

      // Question #1:
        // Question_Widget("Si tienes 3 manzanas y te regalan 2 más, ¿cuántas manzanas tienes en total?"),
      
      // Question #2:
        // Question_Widget("2. Cuatro gatos comen cada una dos veces al día. ¿Cuánto come un gato en un día?"),
      
      // // Question #3:
        Question_Widget("3. Si tienes dos grupos de juguetes y cada grupo tiene 5, ¿cuántos juguetes hay en total?"),
      
      // // Question #4:
        // Question_Widget("4. Tu amigo te da tres caramelos por hora durante una hora y media, ¿cuántos caramelos recibes?"),
      
      // // Question #5:
        // Question_Widget("Tres tristes tigres trigo tragaron. Cuántos tigres hay?"),
      
      // // Question #6:
        // Question_Widget("6. Si hay cuatro niños y cada uno de ellos tiene dos pelotas pequeñas, ¿cuántas pelotas tienen en total los niños?"),
      
      // // Question #7:
        // Question_Widget("7. Si un árbol deja caer cuatro semillas y cada una se convierte en una planta, ¿cuántas plantas habrá?"),
      
      // // Question #8:
        // Question_Widget("8. Hay dos hermanos que tienen tres carros pequeños cada uno. Si juntan todos los carros, ¿cuántos carros hay en total?"),
      
      // // Question #9:
        // Question_Widget("9. Tu amigo te da dos manzanas y luego más tarde le das tres uvas también, ¿cuántas frutas tienes en total?"),
      
      // // Question #10:
        // Question_Widget("Si tienes 3 manzanas y te das 2 más, ¿cuántas manzanas hay en total?",),
      
      
      
      
      
      ],


      // Widget #2
      



  
      ),




    );
  }
}