import 'package:flutter/material.dart';

class CreateAccount_Widget extends StatefulWidget {
  const CreateAccount_Widget({super.key});

  @override
  State<CreateAccount_Widget> createState() => _CreateAccount_WidgetState();
}

class _CreateAccount_WidgetState extends State<CreateAccount_Widget> {
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return 
        Center(
        child: Align(
          alignment: const Alignment(0, -0.14),
          child: SizedBox(
            width: 360,
            child: Card(
              color: const Color.fromARGB(218, 14, 14, 14),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  // evita overflow
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Username TextField
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Username",
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.white70,
                          ),
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 31, 31, 31),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
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

                      // Email TextField
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Email",
                          suffixIcon: const Icon(
                            Icons.email,
                            color: Colors.white70,
                          ),
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 31, 31, 31),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
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

                      // Password TextField
                      TextField(
                        obscureText: _obscurePassword1,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 31, 31, 31),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.5,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword1
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white70,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword1 = !_obscurePassword1;
                              });
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Confirm Password TextField
                      TextField(
                        obscureText: _obscurePassword2,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 31, 31, 31),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.5,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white70,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword2 = !_obscurePassword2;
                              });
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Checkbox
                      Row(
                        children: [
                          Checkbox(
                            value: _acceptTerms,
                            onChanged: (value) {
                              setState(() {
                                _acceptTerms = value ?? false;
                              });
                            },
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                          ),
                          const Expanded(
                            child: Text(
                              "Acepto los términos y condiciones",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: _acceptTerms
                            ? () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Cuenta creada con éxito"),
                                  ),
                                );
                              }
                            : null,
                        child: const Text(
                          "Create Account",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}
