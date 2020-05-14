import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nomor = 0;

  void tekanTombol() {
    setState(() {
      nomor = nomor + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Apk Stateful")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Tambah Bilangan"),
              onPressed: tekanTombol,
            ),
            Text(
              nomor.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    ));
  }
}
