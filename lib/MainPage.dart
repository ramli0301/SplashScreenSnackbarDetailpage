import 'package:flutter/material.dart';
import 'package:postest5_1915026040_ramli/MyHomePage.dart';
import 'package:postest5_1915026040_ramli/pages/Home.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Main Page",
          style: TextStyle(fontSize: 20),
        ),
    ),
      body: Home(),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text("1915026040_Ramli")),
          ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("Postest 3 "),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) {
                    return MyHomePage();
                  },
                ));
              })
        ],
      )),
    );
  }
}

