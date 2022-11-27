import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';

class DinasPendidikan extends StatefulWidget {
  DinasPendidikan({Key? key}) : super(key: key);

  @override
  State<DinasPendidikan> createState() => _DinasPendidikanState();
}

class _DinasPendidikanState extends State<DinasPendidikan> {
  String aktif = 'Evaluasi Sekolah';

  void pilihEvalSekolah() {
    setState(() {
      aktif = 'Evaluasi Sekolah';
    });
  }

  void pilihEvalKelas() {
    setState(() {
      aktif = 'Kurikulum Pendidikan';
    });
  }

  final List tahun = [
    "2022",
    "2021",
    "2020",
    "2019",
    "2018",
  ];

  final List judul = [
    "Evaluasi Program Sekolah",
    "Evaluasi Program Sekolah",
    "Evaluasi Program Sekolah",
    "Evaluasi Program Sekolah",
    "Evaluasi Program Sekolah",
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
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu));
                  }),
                  Text(
                    "Dinas Pendidikan",
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
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 84,
                    ),
                    height: bodyHeight * (1 - 0.10625 - 0.0875) + 50,
                    width: mediaQueryWidth,
                    color: Colors.white,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 0, bottom: 124),
                      itemCount: tahun.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 36,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  child: Center(
                                    child: Text(tahun[index],
                                        style: GoogleFonts.notoSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF4D5569))),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(judul[index],
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF4D5569)))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
                      height: 85,
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
                                      child: Container(
                                        width: (mediaQueryWidth - 48) / 2,
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "Evaluasi Sekolah",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                                fontWeight:
                                                    aktif == 'Evaluasi Sekolah'
                                                        ? FontWeight.w600
                                                        : FontWeight.normal),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        pilihEvalSekolah();
                                      },
                                    ),
                                    Container(
                                      height: 3,
                                      width: (mediaQueryWidth - 48) / 2,
                                      decoration: aktif == 'Evaluasi Sekolah'
                                          ? BoxDecoration(
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
                                            )
                                          : BoxDecoration(),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        width: (mediaQueryWidth - 48) / 2,
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          "Kurikulum Pendidikan",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: aktif ==
                                                      'Kurikulum Pendidikan'
                                                  ? FontWeight.w600
                                                  : FontWeight.normal),
                                        ),
                                      ),
                                      onTap: () {
                                        pilihEvalKelas();
                                      },
                                    ),
                                    Container(
                                      height: 3,
                                      width: (mediaQueryWidth - 48) / 2,
                                      decoration: aktif ==
                                              'Kurikulum Pendidikan'
                                          ? BoxDecoration(
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
                                            )
                                          : BoxDecoration(),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 60,
                                  child: Center(
                                    child: Text(
                                      "Tahun",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF4D5569)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Judul Evaluasi",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF4D5569)),
                                )
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
        ],
      ),
    );
  }
}

class RoundedAlertBox extends StatefulWidget {
  const RoundedAlertBox({Key? key}) : super(key: key);

  @override
  _RoundedAlertBoxState createState() => _RoundedAlertBoxState();
}

class _RoundedAlertBoxState extends State<RoundedAlertBox> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Image.asset(
        'assets/Delete.png',
        width: 16,
      ),
      onPressed: openAlertBox,
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: const EdgeInsets.only(
                top: 11.0, right: 12, bottom: 11, left: 12),
            content: SizedBox(
              width: 290,
              height: 295,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        child: Image.asset(
                          "assets/Exit.png",
                          width: 16,
                        ),
                        onTap: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   PageRouteBuilder(
                          //     pageBuilder: (context, animation1, animation2) =>
                          //         PeminjamanFasilitas1(),
                          //     transitionDuration: Duration.zero,
                          //     reverseTransitionDuration: Duration.zero,
                          //   ),
                          // );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Image.asset(
                    "assets/alert-yakin.png",
                    width: 108,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Yakin Ingin Menghapus?",
                    style: GoogleFonts.notoSans(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
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
            ),
          );
        });
  }
}
