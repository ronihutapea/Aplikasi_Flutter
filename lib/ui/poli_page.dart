import 'package:aplikasi_flutter_pertamaku/poli_detail.dart';
import 'package:aplikasi_flutter_pertamaku/ui/poli_form.dart';
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'package:aplikasi_flutter_pertamaku/poli_detail.dart';
import 'poli_item.dart';
import 'poli_page.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text("Poli Kandungan"),
                ),
              ),
              onTap: () {
                Poli polikandungan = new Poli(namaPoli: "Poli Kandungan");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PoliDetail(poli: polikandungan)));
              }),
          GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text("Poli Gigi"),
                ),
              ),
              onTap: () {
                Poli poligigi = new Poli(namaPoli: "Poli Gigi");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PoliDetail(poli: poligigi)));
              }),
          GestureDetector(
              child: Card(
                child: ListTile(
                  title: const Text("Poli THT"),
                ),
              ),
              onTap: () {
                Poli politht = new Poli(namaPoli: "Poli THT");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PoliDetail(poli: politht)));
              })
        ],
      ),
    );
  }
}
