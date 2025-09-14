import 'package:flutter/material.dart';
// import 'package:t1/Screens/TerminosCondiciones.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'Widgets/CustomButton_Widget.dart';
import 'Login.dart';
import 'TerminosCondiciones.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;
  bool _acceptTerms = false;

  void TermsConditions_Button(){
    print("Terminos y Condiciones presionado");
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TerminosCondiciones()));
  
  }

  void LoadLoginPage_function(){
      print("Loading Login!");
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
    }

  @override
  Widget build(BuildContext context) {
    return Stack(

      

        
      children: [
        // Fondo Personalizado
        CustomBackground_Widget("assets/bg3.jpg"),

        // Boton Terminos y Condiciones:
        // CustomButton_Widget("Terminos y Condiciones", 0.74, 0.9, const Color.fromARGB(255, 238, 88, 65), Colors.white, 140, 56, 16, TermsConditions_Button),
      
        // Back (Login):
        CustomButton_Widget("Back", -0.74, 0.9, const Color.fromARGB(255, 22, 22, 22), Colors.white, 140, 46, 16, LoadLoginPage_function),
      
        

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
      ),




    

      ],


        
    

    );
  }
}
