import 'package:firestore_profile/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => Card(
                  color: Colors.purple,
                  child: Container(
                    child: InkWell(
                      onTap: () => _navigateToProfileScreen(context, index),
                      child: ListTile(
                        title: Hero(child: Material(child: Text(data[index].name)), tag: data[index].name,),
                        leading: ClipOval(child: Hero(child: Image.network(data[index].url), tag: data[index].url,)),
                      ),
                    ),
                  ),
                ),),
      ),
    );
  }

  _navigateToProfileScreen(BuildContext context, index) {

    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(index)));

  }
}

var data = [
  User(
      name: "Dana",
      url:
          "https://baylinartists.com/wp-content/uploads/2017/07/Dana-2448x2730.jpg"),
  User(
      name: "Arham",
      url:
          "https://i.ytimg.com/vi/Dp2JZJ7M59Q/maxresdefault.jpg"),
  User(
      name: "Taggart",
      url:
          "https://i.ytimg.com/vi/-HE3jj5Ah2M/maxresdefault.jpg"),
  User(
      name: "Eric",
      url:
          "https://i.ytimg.com/vi/AfdR003knes/hqdefault.jpg"),
  User(
      name: "Kitty",
      url:
          "https://wishbonepetrescue.org/wp-content/uploads/sites/45/2018/11/Ms-Kitty.jpg"),
  User(
      name: "Nala",
      url:
          "https://i.redd.it/jloa6wpet8c31.jpg")
];

class User {
  String name;
  String url;

  User({this.name, this.url});
}
