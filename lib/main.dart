import 'package:flutter/material.dart';
import 'package:my_demo/UI/widgets/drawer_widget.dart';
import 'package:my_demo/UI/ui_pages/meteo.dart';
import 'package:my_demo/UI/ui_pages/galery.dart';
import 'package:my_demo/UI/UI_pages_statefull/couter.page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/meteo": (context) => MeteoPage(),
        "/galery": (context) => GaleryPage(),
        "/counter": (context) => CounterPage(),
      },
    );
  }
}
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // drawer: Drawer(

      // ),
      drawer: MyDrawer() ,
      appBar: AppBar(title: Text("Home Page", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),

      body: Center(
        child: Text("Welcome to the Home Page!", style: TextStyle(fontSize: 24),),
      ),  
    );
  }
}