import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/jadwal_sekolah/jadwal_sekolah1.dart';
import 'jadwal_kelas2.dart';

class JadwalKelas1 extends StatefulWidget {
  JadwalKelas1({Key? key}) : super(key: key);

  @override
  State<JadwalKelas1> createState() => _JadwalKelas1State();
}

class _JadwalKelas1State extends State<JadwalKelas1> {
  int aktif = 0;

  void showToastKelas7() {
    setState(() {
      aktif = 7;
    });
  }

  void showToastKelas8() {
    setState(() {
      aktif = 8;
    });
  }

  void showToastKelas9() {
    setState(() {
      aktif = 9;
    });
  }

  final List image = [
    "assets/Slide-3.png",
    "assets/Slide-2.png",
    "assets/Slide-1.png",
  ];

  final List kelas = [
    "Kelas 7",
    "Kelas 8",
    "Kelas 9",
  ];

  final List show = [
    7,
    8,
    9,
  ];

  final List subkelas = [
    "A",
    "B",
    "C",
    "D",
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF91ceec),
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
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
                "Jadwal Kelas",
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
      drawer: const DrawerView(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: bodyHeight * 0.10625,
              child: AppBar(
                automaticallyImplyLeading: false,
                leadingWidth: 20,
                toolbarHeight: bodyHeight * 0.10625,
                backgroundColor: Colors.white,
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
                        "Jadwal Kelas",
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
            ),
            Column(
              children: [
                SizedBox(
                  height: bodyHeight * 0.10625 - 1,
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
                      height: bodyHeight * 0.07,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  child: Container(
                                    width: mediaQueryWidth * 0.4,
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "Jadwal Sekolah",
                                        style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                JadwalSekolah1(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  height: 3,
                                  width: mediaQueryWidth * 0.4,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40)),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Jadwal Kelas",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
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
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: bodyHeight * 0.385,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(right: 21),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, top: 10, bottom: 10),
                        child: InkWell(
                          child: aktif == show[index]
                              ? Container(
                                  width: bodyHeight * 0.28,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEDF1F7),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(202, 184, 184, 0.25),
                                        blurRadius: 3.0,
                                        offset: Offset(0.0, 2.0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            image[index],
                                            width: bodyHeight * 0.2,
                                          ),
                                        ),
                                        Text(
                                          kelas[index],
                                          style: GoogleFonts.rubik(
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFF4D5569),
                                              fontSize: 14),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/Paper.png',
                                                  width: 13,
                                                ),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  '3 Kelas',
                                                  style: GoogleFonts.rubik(
                                                      color: const Color(
                                                          0xFF4D5569),
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  width: bodyHeight * 0.28,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(202, 184, 184, 0.25),
                                        blurRadius: 3.0,
                                        offset: Offset(0.0, 2.0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            image[index],
                                            width: bodyHeight * 0.2,
                                          ),
                                        ),
                                        Text(
                                          kelas[index],
                                          style: GoogleFonts.rubik(
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFF4D5569),
                                              fontSize: 14),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/Paper.png',
                                                  width: 13,
                                                ),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  '3 Kelas',
                                                  style: GoogleFonts.rubik(
                                                      color: const Color(
                                                          0xFF4D5569),
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          onTap: () {
                            index == 0
                                ? showToastKelas7()
                                : index == 1
                                    ? showToastKelas8()
                                    : showToastKelas9();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Flexible(
                  child: aktif == 0
                      ? Container(
                          width: mediaQueryWidth,
                          color: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Bertanya.png',
                                  width: 150,
                                ),
                                Text(
                                  "Pilih kelas terlebih dahulu",
                                  style: GoogleFonts.notoSans(
                                      color: const Color(0xFF797F8F),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container(
                          padding:
                              EdgeInsets.only(left: 24.0, right: 24, top: 15),
                          color: Colors.white,
                          width: mediaQueryWidth,
                          height: bodyHeight * 0.3025,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                              height: mediaQueryHeight * 0.025,
                            ),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 237, 237, 237),
                                          blurRadius: 6.0,
                                          offset: Offset(0, 2)),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 15.0),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                "Kelas ${aktif}${subkelas[index]}",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            const Icon(Icons.arrow_forward_ios,
                                                size: 20),
                                          ],
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation1,
                                                      animation2) =>
                                                  JadwalKelas2(),
                                              transitionDuration: Duration.zero,
                                              reverseTransitionDuration:
                                                  Duration.zero,
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
