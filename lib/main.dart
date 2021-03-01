import 'package:flutter/material.dart';
import 'package:instagram/Screens/navbar_homebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navbar(),
    );
  }
}
