import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List oersonNames = ["ahmad", "khaled", "aziz"];
  List oubTi = ["good", "bad", "sda"];
  List imma = ["images/a.jfif", "images/b.jfif", "images/.c.jfif"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(children: [
              ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    trailing: Icon(Icons.person),
                    title: Text("${oersonNames[i]}"),
                    subtitle: Text("${oubTi[i]}"),
                    leading: Image(image: AssetImage("${imma[i]}")),
                  );
                },
              )
            ])));
  }

  // This trailing comma makes auto-formatting nicer for build methods.

}
