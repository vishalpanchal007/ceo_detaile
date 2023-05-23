import 'package:flutter/material.dart';

import 'ceodartfile 1.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myappstate();
  }
}

class myappstate extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CEO());
  }
}
