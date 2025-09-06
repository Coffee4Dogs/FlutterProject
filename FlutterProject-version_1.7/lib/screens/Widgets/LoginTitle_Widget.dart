import 'package:flutter/material.dart';

class LoginTitle_Widget extends StatefulWidget {
  const LoginTitle_Widget({super.key});

  @override
  State<LoginTitle_Widget> createState() => _LoginTitle_WidgetState();
}

class _LoginTitle_WidgetState extends State<LoginTitle_Widget> {
  @override
  Widget build(BuildContext context) {
     
  return Center(
  child: Align(
    alignment: const Alignment(0, -0.14),
    child: SizedBox(
      height: 200,
      width: 360,
      child: Card(
        color: const Color.fromARGB(218, 14, 14, 14),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Username TextField
              TextField(
                style: const TextStyle(color: Color.fromARGB(255, 242, 242, 242),), 
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "username" ,
                  suffixIcon: Icon(Icons.person),
                  hintStyle: const TextStyle(color: Color.fromARGB(236, 240, 240, 240)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 31, 31, 31),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password TextField con icono para mostrar/ocultar
              StatefulBuilder(
                builder: (context, setState) {
                  bool obscure = true;
                  return StatefulBuilder(
                    builder: (context, localSetState) {
                      return TextField(
                        obscureText: obscure,
                        style: const TextStyle(color: Color.fromARGB(255, 242, 242, 242)),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 31, 31, 31),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.5,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscure ? Icons.visibility_off : Icons.visibility,
                              color: Colors.white70,
                            ),
                            onPressed: () {
                              localSetState(() {
                                obscure = !obscure;
                              });
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

            ],
          ),
        ),
      ),
    ),
  ),
);








    
  }
}



