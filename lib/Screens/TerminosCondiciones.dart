import 'package:flutter/material.dart';
import 'package:t1/Screens/CreateAccount.dart';
import 'Widgets/CustomBackground_Widget.dart';
import 'Widgets/CustomTitleSubtitle_Widget.dart';
import 'Widgets/CustomButton_Widget.dart';
// import 'GetStarted.dart';

class TerminosCondiciones extends StatefulWidget {
  const TerminosCondiciones({super.key});

  @override
  State<TerminosCondiciones> createState() => _TerminosCondicionesState();
}

class _TerminosCondicionesState extends State<TerminosCondiciones> {
  

  void LoadCreateAccountPage_function(){
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccount()));
  }
  
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            
            // Background:
            CustomBackground_Widget("assets/bg6.jpg"),
            
            // Logo Image:
            // Align(
            //   alignment: AlignmentGeometry.xy(0, 0),
            //   child: 
            //   AspectRatio(
            //     aspectRatio: 16 / 9, 
            //     child: Image.asset('assets/icon.png'),
            //   ),
            // ), 

            // // Texto Abajo:
            // CustomTitleSubtitle_Widget(0, 0.4, "Desarrollado por:", "Delta Labs Group"),
           
            // Back (Login):
            CustomButton_Widget("Back", -0.74, 0.9, const Color.fromARGB(255, 22, 22, 22), Colors.white, 140, 46, 16, LoadCreateAccountPage_function),
      


            // Container(
            //   color: Color.fromARGB(220, 21, 21, 21),
            //   height: 50, width: 50,
            //   child:
            //   // Texto:
            //   CustomTitleSubtitle_Widget(0, 0.4, "Desarrollado por:", "Delta Labs Group"),
           
            // ),

          Align(
            alignment: AlignmentGeometry.xy(0, 0),
            
            child:
            Container(
              color: Color.fromARGB(220, 21, 21, 21),
              height: 200, width: 300,
              decoration: BoxDecoration(border: Border.all(strokeAlign: 16)),
              
              child:
              // Texto:
              CustomTitleSubtitle_Widget(0, 0.4, "Términos y condiciones",  "1. Al crear una cuenta en [Nombre de tu App], aceptas estos términos y condiciones. Si el usuario es menor de edad, un padre, madre o tutor legal debe leer y aceptar estos términos en su nombre. \n2. Uso de la App \n \nLa app está diseñada para niños y contiene preguntas sencillas sobre números. \nEl contenido es educativo y no recopila información personal innecesaria.\n Los padres o tutores son responsables de supervisar el uso de la app por parte de los menores.\n\n3. Privacidad y Datos\n\nNo recopilamos información personal de los niños sin el consentimiento de los padres o tutores.\nSi se requiere un nombre de usuario o correo electrónico para crear la cuenta, solo se usará para gestionar el acceso a la app.\nNo compartimos datos con terceros.\n\n4. Responsabilidades de los Padres/Tutores\n\nLos padres o tutores deben asegurarse de que el niño use la app de manera adecuada y segura.\nDeben informar cualquier uso inapropiado o problema técnico a través de [correo de contacto].\n\n5. Limitación de Responsabilidad\n\nLa app se ofrece “tal cual” y no garantizamos que esté libre de errores.\nNo nos hacemos responsables por el uso indebido de la app o por daños derivados de su uso.\n\n6. Modificaciones\nNos reservamos el derecho de modificar estos términos en cualquier momento. Las actualizaciones se notificarán en la app.",),
           
            ),

          
          ),





          ],
        ),
      ),


      

    );
  }
}
