import 'package:flutter/material.dart';
import 'package:t1/Screens/Widgets/CustomBackground_Widget.dart';

class TestSection extends StatefulWidget {
  const TestSection({super.key});

  @override
  State<TestSection> createState() => _TestSectionState();
}

class _TestSectionState extends State<TestSection> {
  int currentQuestion = 0;
  int correctas = 0;
  int incorrectas = 0;
  bool finished = false;

  final List<Map<String, dynamic>> questions = [
    {
      "pregunta": "1. Si tienes 3 manzanas y te regalan 2 más, ¿cuántas manzanas tienes en total?",
      "opciones": ["4", "5", "6", "7"],
      "respuesta": "5"
    },
    {
      "pregunta": "2. Si tienes 12 chocolates y los repartes entre 3 amigos, ¿cuántos recibe cada uno?",
      "opciones": ["3", "4", "5", "6"],
      "respuesta": "4"
    },
    {
      "pregunta": "3. Si tienes dos grupos de juguetes y cada grupo tiene 5, ¿cuántos juguetes hay en total?",
      "opciones": ["9", "10", "7", "8"],
      "respuesta": "10"
    },
    {
      "pregunta": "4. Una bicicleta tiene 2 ruedas. ¿Cuántas ruedas tienen 5 bicicletas?",
      "opciones": ["8", "10", "12", "15"],
      "respuesta": "10"
    },
    {
      "pregunta": "5. Tres tristes tigres trigo tragaron. ¿Cuántos tigres hay?",
      "opciones": ["2", "3", "4", "5"],
      "respuesta": "3"
    },
    {
      "pregunta": "6. Si hay cuatro niños y cada uno de ellos tiene dos pelotas, ¿cuántas pelotas tienen en total?",
      "opciones": ["8", "10", "12", "6"],
      "respuesta": "8"
    },
    {
      "pregunta": "7. Si un árbol deja caer cuatro semillas y cada una se convierte en una planta, ¿cuántas plantas habrá?",
      "opciones": ["9", "8", "7", "4"],
      "respuesta": "4"
    },
    {
      "pregunta": "8. Si hoy es lunes, ¿qué día será dentro de 3 días?",
      "opciones": ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes",],
      "respuesta": "Jueves"
    },
    {
      "pregunta": "9. Te dan dos manzanas y luego tres uvas, ¿cuántas frutas tienes en total?",
      "opciones": ["4", "5", "6", "2"],
      "respuesta": "5"
    },
    {
      "pregunta": "10. Si una semana tiene 7 días y pasan 2 semanas, ¿cuántos días pasaron?",
      "opciones": ["10", "12", "14", "15"],
      "respuesta": "14"
    },
  ];

  void checkAnswer(String opcion) {
    if (opcion == questions[currentQuestion]["respuesta"]) {
      correctas++;
    } else {
      incorrectas++;
    }

    setState(() {
      if (currentQuestion < questions.length - 1) {
        currentQuestion++;
      } else {
        finished = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo
          CustomBackground_Widget("assets/bg2.jpg"), 

          // Contenido
          if (finished)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Correctas: $correctas",
                      style: const TextStyle(fontSize: 24, color: Color.fromARGB(255, 95, 189, 23))),
                  Text("Incorrectas: $incorrectas",
                      style: const TextStyle(fontSize: 24, color: Color.fromARGB(255, 244, 54, 54))),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestion = 0;
                        correctas = 0;
                        incorrectas = 0;
                        finished = false;
                      });
                    },
                    child: const Text("Reiniciar"),
                  )
                ],
              ),
            )
          else
            Padding(
              
              padding:
              EdgeInsetsGeometry.only(left: 40, right: 40, top: 100, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    questions[currentQuestion]["pregunta"],
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  ...questions[currentQuestion]["opciones"].map<Widget>((opcion) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () => checkAnswer(opcion),
                        child: Text(opcion, style: const TextStyle(fontSize: 18)),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
