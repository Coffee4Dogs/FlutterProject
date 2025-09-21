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
      "pregunta": "3. Si en una carrera llegas primero, tu posición es:",
      "opciones": ["3ro", "2nd", "1ro", "4to"],
      "respuesta": "1ro",
    },
    {
      "pregunta": "4. ¿Qué número ordinal corresponde al 6?",
      "opciones": ["Sexto", "Segundo", "Quinto", "Décimo"],
      "respuesta": "Sexto",
    },
    {
      "pregunta": "5. Cual es la suma total de las manzanas?",
      "opciones": ["2", "3", "4", "5"],
      "respuesta": "5",
      "imagen": "assets/pregunta5.jpg",
    },
    {
      "pregunta":
          "6. Mira la siguiente imagen, resta 5 pelotas. ¿Cuántas pelotas quedan en total?",
      "opciones": ["9", "5", "4", "6"],
      "respuesta": "4",
      "imagen": "assets/pregunta6.jpg",
    },
    {
      "pregunta": "7. La siguiente figura geometrica a que corresponde?",
      "opciones": ["Círculo", "Cuadrado", "Triángulo", "Rectángulo"],
      "respuesta": "Triángulo",
      "imagen": "assets/pregunta7.jpg",
    },
    {
      "pregunta": "8. la siguiente figura geometrica a que corresponde?",
      "opciones": ["Rectángulo", "Triángulo", "Cuadrado", "Círculo"],
      "respuesta": "Rectángulo",
      "imagen": "assets/pregunta8.jpg",
    },
    {
      "pregunta": "9. Que animal es más PEQUEÑO?",
      "opciones": ["Perro", "Gato"],
      "respuesta": "Gato",
      "imagen": "assets/pregunta9.jpg",
    },
    {
      "pregunta": "10. El oso de peluche en donde está de la caja?",
      "opciones": ["Fuera", "Dentro", "Lejos", "Arriba"],
      "respuesta": "Dentro",
      "imagen": "assets/pregunta10.jpg",
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
                      });
                    },
                    child: const Text("Reiniciar"),
                  ),
                ],
              ),
            )
          else
            Padding(
              padding: EdgeInsetsGeometry.only(
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
