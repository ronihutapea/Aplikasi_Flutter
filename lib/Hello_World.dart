import 'package:flutter/material.dart';

class Roni extends StatelessWidget {
  const Roni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
      ),
      body: const Center(
        child: Text("Ini adalah Tex pemanggilan dari kelas lain "),
      ),
    );
  }
}
