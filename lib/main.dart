import 'package:aplikasi_flutter_pertamaku/ui/poli_page.dart';
import 'package:flutter/material.dart';
import 'column_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Klinik',
      home: PoliPage(),
    );
  }
}
