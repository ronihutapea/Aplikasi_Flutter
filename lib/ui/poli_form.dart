import 'package:aplikasi_flutter_pertamaku/model/poli.dart';
import 'package:aplikasi_flutter_pertamaku/poli_detail.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertamaku/poli_detail.dart';
import 'package:aplikasi_flutter_pertamaku/poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Poli")),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Tombol Simpan"))
            ],
          ),
        ),
      ),
    );
    _fieldNamaPoli() {
      return TextField(
        decoration: const InputDecoration(labelText: "Nama Poli"),
        controller: _namaPoliCtrl,
      );
    }

    _tombolSimpan() {
      return ElevatedButton(
          onPressed: () {
            Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poli)));
          },
          child: const Text("Tombol Simpan"));
    }
  }
}
