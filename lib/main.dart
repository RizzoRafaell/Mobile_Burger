// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'screen_entrada.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaEntrada(key: UniqueKey()), 
      title: 'Mobile Burgers',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
