// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(pertemuan10());
}

class pertemuan10 extends StatefulWidget {
  const pertemuan10({Key? key}) : super(key: key);

  @override
  State<pertemuan10> createState() => _pertemuan10State();
}

class _pertemuan10State extends State<pertemuan10> {
  int nomer = 1;
  int umur = 21;
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  TextEditingController output1 = TextEditingController();

  void tambahkan() {
    int angka1 = int.parse(input1.text);
    int angka2 = int.parse(input2.text);
    int hasil = angka1 + angka2;
    output1.text = hasil.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: input1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "masukkan angka 1"),
            ),
            TextField(
              controller: input2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "masukkan angka ke 2"),
            ),
            ElevatedButton(
                onPressed: () {
                  tambahkan();
                },
                child: Text('tambah')),
            TextField(
              controller: output1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "hasil penjumlahan"),
            ),
          ],
        ),
      ),
    );
  }
}
