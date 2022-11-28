import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/penilaian_pembelajaran/penilaian_pembelajaran3.dart';
import 'package:cekula/screens/radio/radio_jenis_nilai.dart';

class BuatPenilaianPembelajaran extends StatefulWidget {
  BuatPenilaianPembelajaran(
      {Key? key, required this.kelas, required this.mapel, required this.image})
      : super(key: key);
  String kelas;
  String mapel;
  String image;
  @override
  State<BuatPenilaianPembelajaran> createState() =>
      _BuatPenilaianPembelajaranState();
}

class _BuatPenilaianPembelajaranState extends State<BuatPenilaianPembelajaran> {
  final List nama = [
    "Ahmad Jourji Zaidan",
    "Arsenio Hamas Syahid",
    "Daryl Mahardikasiandi",
    "Dini Anjani",
    "Muhammad Irfan Jazuli",
    "Taqiyuddin Ja’far Syaifullah",
    "Ahmad Jourji Zaidan",
    "Arsenio Hamas Syahid",
    "Daryl Mahardikasiandi",
    "Dini Anjani",
    "Muhammad Irfan Jazuli",
    "Taqiyuddin Ja’far Syaifullah",
  ];
  bool formGuruMapel = false;
  TextEditingController _controllerGuruMapel = TextEditingController();

  List<RadioModel> sampleData = <RadioModel>[];

  List data = [];

  @override
  void initState() {
    super.initState();

    if (data.length == 0) {
      for (int i = 0; i < nama.length; i++) {
        data.add('');
      }
    }

    _controllerGuruMapel = TextEditingController();
    _controllerGuruMapel.addListener(() {
      final formGuruMapel = _controllerGuruMapel.text.isNotEmpty;
      setState(() => this.formGuruMapel = formGuruMapel);
    });
    sampleData.add(RadioModel(false, 'Tugas'));
    sampleData.add(RadioModel(false, 'UTS'));
    sampleData.add(RadioModel(false, 'UAS'));
  }

  bool formJenisNilai = false;

  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final paddingHeight = MediaQuery.of(context).padding.top;
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      drawer: const DrawerView(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF91ceec),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: bodyHeight * 0.10625 - 1,
                ),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      height: bodyHeight * (1 - 0.10625) - 87,
                      padding: EdgeInsets.only(
                        top: bodyHeight *
                                (0.03125 +
                                    0.025 +
                                    0.0125 +
                                    0.0125 +
                                    0.0125 +
                                    0.01875) +
                            24 +
                            16 +
                            40 +
                            16 +
                            24,
                      ),
                      color: Colors.white,
                      child: ListView(
                        children: [
                          Container(
                            height: bodyHeight -
                                (bodyHeight * 0.10625) -
                                87 -
                                (bodyHeight *
                                        (0.03125 +
                                            0.025 +
                                            0.0125 +
                                            0.0125 +
                                            0.0125 +
                                            0.01875) +
                                    24 +
                                    16 +
                                    40 +
                                    16 +
                                    24),
                            color: Colors.white,
                            child: ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(
                                height: 15,
                              ),
                              padding: EdgeInsets.only(bottom: 48, top: 10),
                              itemCount: nama.length,
                              itemBuilder: (context, index) {
                                final f = data[index];
                                final controller =
                                    TextEditingController(text: f);
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          nama[index],
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 34,
                                      height: 26,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFedf1f7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6.5, bottom: 2),
                                        child: TextFormField(
                                          controller: controller,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                          ),
                                          onChanged: (val) {
                                            data[index] = val;
                                            addListener() {}
                                            ;
                                          },
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                      width: mediaQueryWidth,
                      height: 39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: formGuruMapel && formJenisNilai
                            ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF9FC3F9), Color(0xFF83DBE0)],
                              )
                            : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFFD2D4DA), Color(0xFFD2D4DA)],
                              ),
                      ),
                      child: MaterialButton(
                        child: Text(
                          'Simpan Nilai',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: formGuruMapel ? openAlertBox : null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: bodyHeight * 0.13125,
                  width: mediaQueryWidth,
                  child: Stack(
                    children: [
                      AppBar(
                        automaticallyImplyLeading: false,
                        leadingWidth: 20,
                        toolbarHeight: bodyHeight * 0.10625,
                        backgroundColor: const Color(0xFF91ceec),
                        elevation: 0.0,
                        title: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Builder(builder: (context) {
                                return IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    icon: const Icon(Icons.arrow_back));
                              }),
                              Text(
                                "Buat Penilaian",
                                style: GoogleFonts.rubik(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        flexibleSpace: Container(
                          width: mediaQueryWidth,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Color(0xFF9FC3F9),
                                Color(0xFF83DBE0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: bodyHeight * 0.10625 - 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  width: mediaQueryWidth,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: bodyHeight * 0.03125,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.kelas,
                            style: GoogleFonts.notoSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                '${widget.image}',
                                width: 24,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.mapel,
                                style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.025,
                      ),
                      Text(
                        "Nama Guru Mata Pelajaran",
                        style: GoogleFonts.notoSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF4D5569)),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.0125,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFFedf1f7),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 4),
                            child: TextFormField(
                              controller: _controllerGuruMapel,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan nama guru mata pelajaran',
                                  hintStyle: GoogleFonts.notoSans(
                                      color: const Color(0xFFA6AAB4))),
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.0125,
                      ),
                      Text(
                        "Jenis Nilai",
                        style: GoogleFonts.notoSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF4D5569)),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.0125,
                      ),
                      SizedBox(
                        height: 24,
                        child: ListView.builder(
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
                                  formJenisNilai = true;
                                });
                              },
                              child: RadioItem(sampleData[index]),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.01875,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: const EdgeInsets.all(0),
            content: Container(
              width: 290,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFBFBFB),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                          icon: Icon(Icons.clear_rounded)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 44,
                          ),
                          Image.asset(
                            "assets/alert-jadwal.png",
                            height: 143,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Penilaian Pembelajaran\nDisimpan",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Silahkan kembali ke halaman\npenilaian pembelajaran",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF797F8F),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
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
