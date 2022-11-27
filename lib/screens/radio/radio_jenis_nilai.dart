import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioJenisNilai extends StatefulWidget {
  const RadioJenisNilai({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioState();
  }
}

class CustomRadioState extends State<RadioJenisNilai> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // ignore: todo
    super.initState();
    sampleData.add(RadioModel(false, 'Tugas'));
    sampleData.add(RadioModel(false, 'UTS'));
    sampleData.add(RadioModel(false, 'UAS'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                for (var element in sampleData) {
                  element.isSelected = false;
                }
                sampleData[index].isSelected = true;
              });
            },
            child: RadioItem(sampleData[index]),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 24,
            child: Center(
              child: Text("Nilai ${_item.buttonText}",
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
