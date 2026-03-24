import 'package:flutter/material.dart';

import 'package:my_demo/UI/ui_pages/meteo.dart';
import 'package:my_demo/config/global.params.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/profil_image.jpeg'),
          )
            ),
          ),
          // ListTile(

          //   title: Text("Counter"
          //   ,style: 
          //   TextStyle(fontSize: 22),),
          //   leading: Icon(Icons.home, color: Colors.orange,),
          //   trailing: Icon(Icons.arrow_right, color: Colors.orangeAccent,),
          //   onTap: () {

          //     Navigator.of(context).pop();
          //     Navigator.pushNamed(context, "/counter");
          //     // Navigator.pop(context);
          //   },

          // ),

          // creation des separateurs entre les elements du menu


          // Divider(height: 2, color: Colors.green,),
                
          //   ListTile(

          //   title: Text("Meteo",
          //   style: 
          //   TextStyle(fontSize: 22),),
          //   leading: Icon(Icons.home, color: Colors.orange,),
          //   trailing: Icon(Icons.arrow_right, color: Colors.orangeAccent,),
          //   onTap: () {

          //     Navigator.of(context).pop();
          //     Navigator.pushNamed(context, "/meteo");
          //     // Navigator.pop(context);
          //   },

          // ),
          ... (GlobalParams.menus as List).map((item) {
            return ListTile(
              title: Text('${item['title']}', style: TextStyle(fontSize: 22),),
              leading: item['icon'],
              trailing: Icon(Icons.arrow_right, color: Colors.orange,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "${item['route']}");
              },
            );
          })
          

        ],
      )
    );
  }
}