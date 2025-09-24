import 'package:flutter/material.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'Widgets/CustomButton_Widget.dart';
import 'Login.dart';
import '../models/user.dart';
import '../adapters/dio_adapter.dart';
import '../adapters/local_storage.dart';
import 'dart:convert' as convert;

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _password1Controller = TextEditingController();
  final _password2Controller = TextEditingController();

  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;
  bool _acceptTerms = false;
  bool _isLoading = false;

  final DioAdapter _dioAdapter = DioAdapter();
  final LocalStorage _localStorage = LocalStorage();

  void _showMessage(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  void _goToMainApp() {
    Navigator.pushNamed(context, 'main-app');
  }

  Future<void> _createAccount() async {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final pass1 = _password1Controller.text.trim();
    final pass2 = _password2Controller.text.trim();

    if (username.isEmpty || email.isEmpty || pass1.isEmpty || pass2.isEmpty) {
      _showMessage("Por favor llena todos los campos.");
      return;
    }

    if (pass1 != pass2) {
      _showMessage("Las contraseñas no coinciden.");
      return;
    }

    if (!_acceptTerms) {
      _showMessage("Debes aceptar los términos y condiciones.");
      return;
    }

    setState(() => _isLoading = true);

    try {
      User user = User(username: username, email: email, password: pass1);

      final response = await _dioAdapter.postRequest(
        'https://####-be.vercel.app/api/users',
        user.toMap(),
      );

      User newUser = User.fromMap(response["user"]);
      await _localStorage.setUserData("user", newUser.toMapString());
      await _localStorage.setLoginStatus(true);

      String userString = await _localStorage.getUserData('user');
      dynamic userMap = convert.jsonDecode(userString);

      _showMessage("Usuario registrado con éxito: ${userMap['username']}");
      _goToMainApp();
    } catch (e) {
      print("Error creando usuario: $e");
      _showMessage("Error al crear la cuenta.");
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _goToLogin() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomBackground_Widget("assets/bg3.jpg"),
        CustomButton_Widget(
          "Back",
          -0.74,
          0.9,
          const Color.fromARGB(255, 22, 22, 22),
          Colors.white,
          140,
          46,
          16,
          _goToLogin,
        ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: _usernameController,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          decoration: _inputDecoration(
                            "Username",
                            Icons.person,
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _emailController,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          decoration: _inputDecoration("Email", Icons.email),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _password1Controller,
                          obscureText: _obscurePassword1,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          decoration: _passwordDecoration(
                            "Password",
                            _obscurePassword1,
                            () => setState(
                              () => _obscurePassword1 = !_obscurePassword1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _password2Controller,
                          obscureText: _obscurePassword2,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          decoration: _passwordDecoration(
                            "Confirm Password",
                            _obscurePassword2,
                            () => setState(
                              () => _obscurePassword2 = !_obscurePassword2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Checkbox(
                              value: _acceptTerms,
                              onChanged: (value) =>
                                  setState(() => _acceptTerms = value ?? false),
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
                          onPressed: _isLoading ? null : _createAccount,
                          child: _isLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Create Account",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
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

  InputDecoration _inputDecoration(String hint, IconData icon) {
    return InputDecoration(
      hintText: hint,
      suffixIcon: Icon(icon, color: Colors.white70),
      hintStyle: const TextStyle(color: Colors.white70),
      filled: true,
      fillColor: const Color.fromARGB(255, 31, 31, 31),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.5),
      ),
    );
  }

  InputDecoration _passwordDecoration(
    String hint,
    bool obscure,
    VoidCallback onToggle,
  ) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.white70),
      filled: true,
      fillColor: const Color.fromARGB(255, 31, 31, 31),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.5),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          obscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.white70,
        ),
        onPressed: onToggle,
      ),
    );
  }
}
