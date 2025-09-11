import 'package:flutter/material.dart';
import 'Widgets/CustomBackground_Widget.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 87, 148, 126),
        body: Stack(
          children: [
            
            // Background:
            CustomBackground_Widget("assets/bg5.jpg"),

            
          ],
        ),
      ),
    );
  }
}