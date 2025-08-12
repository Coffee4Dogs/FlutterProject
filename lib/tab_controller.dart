import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/profile.dart';
import 'screens/option3.dart';
import 'screens/option4.dart';

class TabControllerScreen extends StatelessWidget {

  const TabControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
    child: Scaffold(
      appBar: AppBar(
        title: const Text('My super tab app!'),
        bottom: const TabBar( tabs: [
        Tab(icon: Icon(Icons.home),),
        Tab(icon: Icon(Icons.person),),
        Tab(icon: Icon(Icons.scuba_diving_rounded),),
        Tab(icon: Icon(Icons.back_hand),),
      ],),
      ),
      body: const TabBarView(children: [
        HomeScreen(),
        ProfileScreen(),
        Option3(),
        Option4(),
      ]),
    ));
  }
  
}