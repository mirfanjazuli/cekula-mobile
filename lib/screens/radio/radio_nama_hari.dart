import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioNamaHari extends StatefulWidget {
  const RadioNamaHari({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioState();
  }
}

class CustomRadioState extends State<RadioNamaHari> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // ignore: todo
    super.initState();
    sampleData.add(RadioModel(false, 'Senin'));
    sampleData.add(RadioModel(false, 'Selasa'));
    sampleData.add(RadioModel(false, 'Rabu'));
    sampleData.add(RadioModel(false, 'Kamis'));
    sampleData.add(RadioModel(false, 'Jumat'));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: mediaQueryWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
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
          ],
        ),
      ),

      // ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: sampleData.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return InkWell(
      //       highlightColor: Colors.transparent,
      //       splashColor: Colors.transparent,
      //       onTap: () {
      //         setState(() {
      //           for (var element in sampleData) {
      //             element.isSelected = false;
      //           }
      //           sampleData[index].isSelected = true;
      //         });
      //       },
      //       child: RadioItem(sampleData[index]),
      //     );
      //   },
      // ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 24.0,
            width: 54.4,
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
