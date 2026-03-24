import 'package:flutter/material.dart';

class MeteoPage extends StatelessWidget {
  const MeteoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meteo Page", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
      body: Center(
        child: Text("Welcome to the Meteo Page!", style: Theme.of(context).textTheme.headlineMedium,),
      ),
    );
  }
}