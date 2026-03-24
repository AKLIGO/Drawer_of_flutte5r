import 'package:flutter/material.dart';

class GlobalParams{
 static List<Map<String, dynamic>> menus= [
    {
      "title":"Couter", "icon":Icon(Icons.home, color: Colors.amber,), "route":"/counter"
    },

     {
      "title":"Meteo", "icon":Icon(Icons.camera, color: Colors.blue,), "route":"/meteo"
    }
,
     {
      "title":"Gallery", "icon":Icon(Icons.map, color: Colors.green,), "route":"/galery"
    }
  ];
}