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

  String? selectedOption;

  final List<Map<String, dynamic>> questions = [
    {
      "pregunta": "1. ¿Qué número viene después del 7?",
      "opciones": ["6", "8", "9", "10"],
      "respuesta": "8",
    },
    {
      "pregunta": "2. ¿Qué número viene después del 15?",
      "opciones": ["14", "20", "16", "18"],
      "respuesta": "16",
    },
    {
      "pregunta": "3. Si llegas primero en la carrera, eres el:",
      "opciones": ["3ro", "2do", "1ro", "4to"],
      "respuesta": "1ro",
    },
    {
      "pregunta": "4. El número 6 es:",
      "opciones": ["Sexto", "Segundo", "Quinto", "Décimo"],
      "respuesta": "Sexto",
    },
    {
      "pregunta": "5. ¿Cuántas manzanas hay en total?",
      "opciones": ["2", "3", "4", "5"],
      "respuesta": "5",
      "imagen": "assets/pregunta5.jpg",
    },
    {
      "pregunta": "6. Quita 5 pelotas. ¿Cuántas quedan?",
      "opciones": ["9", "5", "4", "6"],
      "respuesta": "4",
      "imagen": "assets/pregunta6.jpg",
    },
    {
      "pregunta": "7. ¿Qué figura es esta?",
      "opciones": ["Círculo", "Cuadrado", "Triángulo", "Rectángulo"],
      "respuesta": "Triángulo",
      "imagen": "assets/pregunta7.jpg",
    },
    {
      "pregunta": "8. ¿Qué figura es esta?",
      "opciones": ["Rectángulo", "Triángulo", "Cuadrado", "Círculo"],
      "respuesta": "Rectángulo",
      "imagen": "assets/pregunta8.jpg",
    },
    {
      "pregunta": "9. ¿Cuál animal es más pequeño?",
      "opciones": ["Perro", "Gato"],
      "respuesta": "Gato",
      "imagen": "assets/pregunta9.jpg",
    },
    {
      "pregunta": "10. ¿Dónde está el osito?",
      "opciones": ["Fuera", "Dentro", "Lejos", "Arriba"],
      "respuesta": "Dentro",
      "imagen": "assets/pregunta10.jpg",
    },
    {
      "pregunta": "11. ¿Qué número es este?",
      "opciones": ["7", "3", "5", "2"],
      "respuesta": "5",
      "imagen": "assets/pregunta11.png",
    },
    {
      "pregunta": "12. ¿Qué figura ves aquí?",
      "opciones": ["Círculo", "Cuadro", "Triángulo", "Rectángulo"],
      "respuesta": "Círculo",
      "imagen": "assets/pregunta12.png",
    },
    {
      "pregunta": "13. ¿Dónde está la pelota?",
      "opciones": ["Arriba", "Abajo", "Izquierda", "Derecha"],
      "respuesta": "Abajo",
      "imagen": "assets/pregunta13.jpeg",
    },
    {
      "pregunta": "14. ¿El gato está dentro o fuera de la caja?",
      "opciones": ["Fuera", "Dentro", "Lejos", "Arriba"],
      "respuesta": "Dentro",
      "imagen": "assets/pregunta14.jpeg",
    },
  ];

  void checkAnswer(String opcion) {
    if (selectedOption != null) return;

    setState(() {
      selectedOption = opcion;

      if (opcion == questions[currentQuestion]["respuesta"]) {
        correctas++;
      } else {
        incorrectas++;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        if (currentQuestion < questions.length - 1) {
          currentQuestion++;
          selectedOption = null;
        } else {
          finished = true;
        }
      });
    });
  }

  Color _getButtonColor(String opcion) {
    final correctAnswer = questions[currentQuestion]["respuesta"];

    if (selectedOption == null) return Colors.blue;

    if (opcion == correctAnswer) return Colors.green;
    if (opcion == selectedOption && opcion != correctAnswer) {
      return Colors.red;
    }
    return Colors.grey;
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
                  Text(
                    "Correctas: $correctas",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 95, 189, 23),
                    ),
                  ),
                  Text(
                    "Incorrectas: $incorrectas",
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 244, 54, 54),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestion = 0;
                        correctas = 0;
                        incorrectas = 0;
                        finished = false;
                        selectedOption = null;
                      });
                    },
                    child: const Text("Reiniciar"),
                  ),
                ],
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 100,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    questions[currentQuestion]["pregunta"],
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 30),

                  if (questions[currentQuestion]["imagen"] != null)
                    Center(
                      child: Image.asset(
                        questions[currentQuestion]["imagen"],
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),

                  ...questions[currentQuestion]["opciones"].map<Widget>((
                    opcion,
                  ) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _getButtonColor(opcion),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () => checkAnswer(opcion),
                        child: Text(
                          opcion,
                          style: const TextStyle(fontSize: 18),
                        ),
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
