import 'dart:html';

import 'package:flutter/material.dart';
import 'Hello_World.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Klinik',
      home: Roni(),
    );
  }
}
