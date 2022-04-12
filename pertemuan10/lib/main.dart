// ignore_for_file: camel_case_types, prefer_const_constructors

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(nomer.toString()),
    );
  }
}
