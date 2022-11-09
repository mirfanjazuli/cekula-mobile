import 'package:flutter/material.dart';

class HitungJumlahKata extends StatefulWidget {
  const HitungJumlahKata({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HitungJumlahKata> {
  final TextEditingController _hurufcontroller = TextEditingController();
  final TextEditingController _digitcontroller = TextEditingController();

  int _charHuruf = 0;
  int _charDigit = 0;

  _onChangedHuruf(String value) {
    setState(() {
      _charHuruf = value.split(" ").length;
    });
  }

  _onChangedDigit(String value) {
    setState(() {
      _charDigit = value.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _hurufcontroller, //Tambahkan Controller
              onChanged: _onChangedHuruf, //Tambahkan Fuction
              maxLength: 25, //batas char max yang bisa diinputkan
              decoration: InputDecoration(
                counterText: '$_charHuruf/25', //Untuk menampilkan hitungan
                filled: true,
                border: OutlineInputBorder(),
                hintText: 'Masukan huruf untuk dihitung',
                labelText: 'Hitung Huruf',
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     controller: _digitcontroller, //Tambahkan Controller
          //     onChanged: _onChangedDigit, //Tambahkan Fuction
          //     maxLength: 10, //batas char max yang bisa diinputkan
          //     keyboardType: TextInputType.number,
          //     decoration: InputDecoration(
          //       counterText: '$_charDigit/10', //Untuk menampilkan hitungan
          //       filled: true,
          //       border: UnderlineInputBorder(),
          //       hintText: 'Masukan digit untuk dihitung',
          //       labelText: 'Hitung Digit',
          //     ),
          //   ),
          // ),
        ],
      ),
    ));
  }
}
