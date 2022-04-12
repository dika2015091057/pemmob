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
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  TextEditingController output1 = TextEditingController();
  TextEditingController output2 = TextEditingController();

  void tambahkan() {
    int angka1 = int.parse(input1.text);
    int angka2 = int.parse(input2.text);
    int hasil1 = angka1 + angka2;

    String berbilang = '';
    if (hasil1 == 1) {
      berbilang = "satu";
    } else if (hasil1 == 2) {
      berbilang = "dua";
    } else if (hasil1 == 3) {
      berbilang = "tiga";
    } else if (hasil1 == 100) {
      berbilang = "seratus";
    } else if (hasil1 == 97) {
      berbilang = "sembilan puluh tujuh";
    } else if (hasil1 == 50) {
      berbilang = "lima puluh";
    } else {
      berbilang = "hasilnya " + hasil1.toString();
    }
    output1.text = hasil1.toString();
    output2.text = berbilang;
  }

  void kurang() {
    int angka1 = int.parse(input1.text);
    int angka2 = int.parse(input2.text);
    int hasil1 = angka1 - angka2;

    String berbilang = '';
    if (hasil1 == 1) {
      berbilang = "satu";
    } else if (hasil1 == 2) {
      berbilang = "dua";
    } else if (hasil1 == 3) {
      berbilang = "tiga";
    } else if (hasil1 == 100) {
      berbilang = "seratus";
    } else if (hasil1 == 97) {
      berbilang = "sembilan puluh tujuh";
    } else if (hasil1 == 50) {
      berbilang = "lima puluh";
    } else {
      berbilang = "hasilnya " + hasil1.toString();
    }
    output1.text = hasil1.toString();
    output2.text = berbilang;
  }

  void kali() {
    int angka1 = int.parse(input1.text);
    int angka2 = int.parse(input2.text);
    int hasil1 = angka1 * angka2;

    String berbilang = '';
    if (hasil1 == 1) {
      berbilang = "satu";
    } else if (hasil1 == 2) {
      berbilang = "dua";
    } else if (hasil1 == 3) {
      berbilang = "tiga";
    } else if (hasil1 == 100) {
      berbilang = "seratus";
    } else if (hasil1 == 97) {
      berbilang = "sembilan puluh tujuh";
    } else if (hasil1 == 50) {
      berbilang = "lima puluh";
    } else {
      berbilang = "hasilnya " + hasil1.toString();
    }
    output1.text = hasil1.toString();
    output2.text = berbilang;
  }

  void bagi() {
    int angka1 = int.parse(input1.text);
    int angka2 = int.parse(input2.text);
    double hasil1 = angka1 / angka2;

    String berbilang = '';
    if (hasil1 == 1) {
      berbilang = "satu";
    } else if (hasil1 == 2) {
      berbilang = "dua";
    } else if (hasil1 == 3) {
      berbilang = "tiga";
    } else if (hasil1 == 100) {
      berbilang = "seratus";
    } else if (hasil1 == 97) {
      berbilang = "sembilan puluh tujuh";
    } else if (hasil1 == 50) {
      berbilang = "lima puluh";
    } else {
      berbilang = "hasilnya " + hasil1.toString();
    }
    output1.text = hasil1.toString();
    output2.text = berbilang;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('2015091059'),
        ),
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
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      tambahkan();
                    },
                    child: Text('tambah')),
                ElevatedButton(
                    onPressed: () {
                      kurang();
                    },
                    child: Text('kurang')),
                ElevatedButton(
                    onPressed: () {
                      kali();
                    },
                    child: Text("kali")),
                ElevatedButton(
                    onPressed: () {
                      bagi();
                    },
                    child: Text('bagi')),
              ],
            ),
            TextField(
              controller: output1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "hasil penjumlahan"),
            ),
            TextField(
              controller: output2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "bilangan berbilang"),
            ),
          ],
        ),
      ),
    );
  }
}
