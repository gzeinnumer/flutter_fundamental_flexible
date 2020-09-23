import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  MyFlexible(Colors.red),
                  MyFlexible(Colors.yellow),
                  MyFlexible(Colors.lightBlue),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            MyFlexible(Colors.green),
          ],
        ),
      ),
    );
  }
}

class MyFlexible extends StatelessWidget {
  Color color;

  MyFlexible(this.color);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        color: this.color,
      ),
    );
  }
}
