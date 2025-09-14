import 'package:flutter/material.dart';
// import 'package:t1/Screens/Login.dart';

Widget CustomButton_Widget(
  String text_button,
  double x_alignment,
  double y_alignment,
  Color bg_color,
  Color fg_color,
  double x_size,
  double y_size,
  double border_radius,
  VoidCallback custombutton_function,
) {
  return Align(
    alignment: Alignment(x_alignment, y_alignment),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bg_color,
        foregroundColor: fg_color,
        shadowColor: const Color.fromARGB(0, 0, 0, 0),
        fixedSize: Size(x_size, y_size),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(border_radius),
        ),
        padding: EdgeInsets.zero, // Asegura que no haya padding interno adicional
      ),
      onPressed: custombutton_function,
      child: Center(
        child: Text(
          text_button,
          textAlign: TextAlign.center, // Centra el texto dentro del widget Text
          style: const TextStyle(fontSize: 16),
        ),
      ),
    ),
  );
}