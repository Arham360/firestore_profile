import 'package:flutter/material.dart';

import 'main.dart';

class ProfileScreen extends StatelessWidget {
  int index;

  ProfileScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(child: Image.network(data[index].url), tag: data[index].url,),
          ),
          Expanded(
            child: Center(
              child: Hero(child: Material(child: Text(data[index].name,style: TextStyle(fontSize: 40),)), tag: data[index].name,),
            ),
          ),
        ],
      ),
    );
  }
}
