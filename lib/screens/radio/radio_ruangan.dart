import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioRuangan extends StatefulWidget {
  const RadioRuangan({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioState();
  }
}

class CustomRadioState extends State<RadioRuangan> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // ignore: todo
    super.initState();
    sampleData.add(RadioModel(false, 'Aula'));
    sampleData.add(RadioModel(false, 'Kelas 7A'));
    sampleData.add(RadioModel(false, 'Kelas 7B'));
    sampleData.add(RadioModel(false, 'Kelas 7C'));
    sampleData.add(RadioModel(false, 'Kelas 8A'));
    sampleData.add(RadioModel(false, 'Kelas 8B'));
    sampleData.add(RadioModel(false, 'Kelas 8C'));
    sampleData.add(RadioModel(false, 'Kelas 9A'));
    sampleData.add(RadioModel(false, 'Kelas 9B'));
    sampleData.add(RadioModel(false, 'Kelas 9C'));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[0].isSelected = true;
                });
              },
              child: RadioItem(sampleData[0]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[1].isSelected = true;
                });
              },
              child: RadioItem(sampleData[1]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[2].isSelected = true;
                });
              },
              child: RadioItem(sampleData[2]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[3].isSelected = true;
                });
              },
              child: RadioItem(sampleData[3]),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[4].isSelected = true;
                });
              },
              child: RadioItem(sampleData[4]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[5].isSelected = true;
                });
              },
              child: RadioItem(sampleData[5]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[6].isSelected = true;
                });
              },
              child: RadioItem(sampleData[6]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[7].isSelected = true;
                });
              },
              child: RadioItem(sampleData[7]),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[8].isSelected = true;
                });
              },
              child: RadioItem(sampleData[8]),
            ),
            SizedBox(
              width: mediaQueryWidth * 0.02777,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[9].isSelected = true;
                });
              },
              child: RadioItem(sampleData[9]),
            ),
          ],
        )
      ],
    ));
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  const RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.02777),
            height: 24,
            child: Center(
              child: Text("${_item.buttonText}",
                  style: GoogleFonts.notoSans(
                      color:
                          _item.isSelected ? Colors.white : Color(0xFF9FC3F9),
                      //fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
            ),
            decoration: BoxDecoration(
              color: _item.isSelected ? Color(0xFF9FC3F9) : Colors.transparent,
              border: Border.all(width: 1.0, color: Color(0xFF9FC3F9)),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;

  RadioModel(
    this.isSelected,
    this.buttonText,
  );
}
