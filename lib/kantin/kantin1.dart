import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  //buat variabel pertama
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //kedua buat codingan ini
            Text(_dateTime == null
                ? 'Nothing has been picked yet'
                : _dateTime.toString()),
            RaisedButton(
              child: Text("Pick a date"),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2099),
                ).then((date) {
                  //tambahkan setState dan panggil variabel _dateTime.
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
