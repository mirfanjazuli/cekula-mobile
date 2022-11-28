import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/penilaian_pembelajaran/buat_penilaian_pembelajaran.dart';
import 'package:cekula/screens/penilaian_pembelajaran/edit_penilaian_pembelajaran.dart';
import 'package:cekula/screens/penilaian_pembelajaran/penilaian_pembelajaran2.dart';
import 'package:cekula/screens/penilaian_pembelajaran/penilaian_pembelajaran4.dart';

class PenilaianPembelajaran3 extends StatefulWidget {
  PenilaianPembelajaran3(
      {Key? key, required this.kelas, required this.mapel, required this.image})
      : super(key: key);
  String kelas;
  String mapel;
  String image;
  @override
  State<PenilaianPembelajaran3> createState() => _PenilaianPembelajaran3State();
}

class _PenilaianPembelajaran3State extends State<PenilaianPembelajaran3> {
  String aktif = "ganjil";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.mapel.contains('Olahraga')) {
      widget.mapel = 'Pendidikan Jasmani,\nOlahraga, dan Kesehatan';
    }
    if (widget.mapel.contains('Kewarganegaraan')) {
      widget.mapel = 'Pendidikan\nKewarganegaraan';
    }
  }

  void pilihGanjil() {
    setState(() {
      aktif = "ganjil";
    });
  }

  void pilihGenap() {
    setState(() {
      aktif = "genap";
    });
  }

  final List penilaian = [
    "Nilai Tugas",
    "Nilai Ujian Tengah Semester",
    "Nilai Ujian Akhir Semester",
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final paddingHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      drawer: const DrawerView(),
      body: Stack(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 20,
            toolbarHeight: bodyHeight * 0.10625,
            backgroundColor: const Color(0xFF9FC3F9),
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
                    "Penilaian Pembelajaran",
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
          Positioned(
            top: bodyHeight * 0.10625 + paddingHeight - 1,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(top: bodyHeight * 0.0875 - 23),
                        height: bodyHeight,
                        padding: const EdgeInsets.only(left: 21, right: 21),
                        width: mediaQueryWidth,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: bodyHeight * (1 - 0.0875 - 0.10625) - 23,
                              padding: EdgeInsets.only(top: 25),
                              child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 10,
                                ),
                                padding: EdgeInsets.only(bottom: 100),
                                itemCount: penilaian.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3.0),
                                    child: Container(
                                      width: mediaQueryWidth,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 237, 237, 237),
                                                blurRadius: 6.0,
                                                offset: Offset(0, 2)),
                                          ]),
                                      // color: Colors.red,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: InkWell(
                                                child: Text(
                                                  penilaian[index],
                                                  style: GoogleFonts.notoSans(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xFF4D5569),
                                                  ),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                      pageBuilder: (context,
                                                              animation1,
                                                              animation2) =>
                                                          PenilaianPembelajaran4(),
                                                      transitionDuration:
                                                          Duration.zero,
                                                      reverseTransitionDuration:
                                                          Duration.zero,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                  padding: EdgeInsets.all(3),
                                                  constraints:
                                                      const BoxConstraints(),
                                                  icon: Image.asset(
                                                    'assets/Edit.png',
                                                    width: 16,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      PageRouteBuilder(
                                                        pageBuilder: (context,
                                                                animation1,
                                                                animation2) =>
                                                            EditPenilaianPembelajaran(
                                                          kelas: widget.kelas,
                                                          mapel: widget.mapel,
                                                          image: widget.image,
                                                        ),
                                                        transitionDuration:
                                                            Duration.zero,
                                                        reverseTransitionDuration:
                                                            Duration.zero,
                                                      ),
                                                    );
                                                  },
                                                ),
                                                const SizedBox(
                                                  width: 1,
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.all(3),
                                                  constraints:
                                                      const BoxConstraints(),
                                                  icon: Image.asset(
                                                    'assets/Delete.png',
                                                    width: 16,
                                                  ),
                                                  onPressed: openAlertBox,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: mediaQueryWidth,
                      height: bodyHeight * (0.05),
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
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: mediaQueryWidth,
                      height: bodyHeight * 0.0875,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      child: aktif == "ganjil"
                                          ? Text(
                                              "Ganjil",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          : Text(
                                              "Ganjil",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 14),
                                            ),
                                      onTap: () {
                                        pilihGanjil();
                                      },
                                    ),
                                    aktif == "ganjil"
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            height: 3,
                                            width: mediaQueryWidth * 0.4,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(40),
                                                  topLeft: Radius.circular(40)),
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: <Color>[
                                                  Color(0xFF9FC3F9),
                                                  Color(0xFF83DBE0),
                                                ],
                                              ),
                                            ),
                                          )
                                        : Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            height: 3,
                                            width: mediaQueryWidth * 0.4,
                                          )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      child: aktif == "genap"
                                          ? Text("Genap",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600))
                                          : Text("Genap",
                                              style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                              )),
                                      onTap: () {
                                        pilihGenap();
                                      },
                                    ),
                                    aktif == "genap"
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            height: 3,
                                            width: mediaQueryWidth * 0.4,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(40),
                                                  topLeft: Radius.circular(40)),
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: <Color>[
                                                  Color(0xFF9FC3F9),
                                                  Color(0xFF83DBE0),
                                                ],
                                              ),
                                            ),
                                          )
                                        : Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            height: 3,
                                            width: mediaQueryWidth * 0.4,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(40),
                                                  topLeft: Radius.circular(40)),
                                            ),
                                          )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 24,
            // top: bodyHeight * 0.88125,
            bottom: 24,
            child: InkWell(
              child: Container(
                height: 48,
                width: 46,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color(0xFF9FC3F9),
                      Color(0xFF83DBE0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Image.asset(
                  'assets/Plus.png',
                  scale: 1,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        BuatPenilaianPembelajaran(
                      kelas: widget.kelas,
                      mapel: widget.mapel,
                      image: widget.image,
                    ),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
            ),
          ),
        ],
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
            content: SizedBox(
              width: 290,
              height: 320,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
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
                            height: 48,
                          ),
                          Image.asset(
                            "assets/alert-yakin.png",
                            width: 108,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Yakin Ingin Menghapus\nData Penilaian\nPembelajaran?",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          SizedBox(
                            width: 219,
                            height: 32,
                            child: OutlinedButton(
                              child: const Text('Ya'),
                              style: OutlinedButton.styleFrom(
                                primary: const Color(0xFF9FC3F9),
                                side: const BorderSide(
                                    color: Color(0xFF9FC3F9), width: 1),
                              ),
                              onPressed: () {},
                            ),
                          )
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
