import 'package:flutter/material.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Galery Page", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
      body: Center(
        child: Text("Welcome to the Galery Page!", style: Theme.of(context).textTheme.headlineMedium,),
      ),
    );
  }
}