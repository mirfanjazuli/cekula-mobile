import 'package:cekula/screens/presensi_murid/presensi_murid2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';

class PresensiMurid1 extends StatefulWidget {
  const PresensiMurid1({Key? key}) : super(key: key);

  @override
  State<PresensiMurid1> createState() => _PresensiMurid1State();
}

class _PresensiMurid1State extends State<PresensiMurid1> {
  final List kelas = [
    "Kelas 7A",
    "Kelas 7B",
    "Kelas 7C",
    "Kelas 7D",
    "Kelas 7E",
    "Kelas 7F",
    "Kelas 7G",
    "Kelas 7H",
    "Kelas 8A",
    "Kelas 8B",
    "Kelas 8C",
    "Kelas 9A",
    "Kelas 9B",
    "Kelas 9C",
    "Kelas 9D",
  ];
  List totalPerKelas = [];
  int totalKelas7 = 0;
  int totalKelas8 = 0;
  int totalKelas9 = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (totalKelas7 == 0 && totalKelas8 == 0 && totalKelas9 == 0) {
      for (int a = 0; a < kelas.length; a++) {
        if (kelas[a].contains('7')) {
          totalKelas7++;
        }
        if (kelas[a].contains('8')) {
          totalKelas8++;
        }
        if (kelas[a].contains('9')) {
          totalKelas9++;
        }
      }
      totalPerKelas.add(totalKelas9);
      totalPerKelas.add(totalKelas8);
      totalPerKelas.add(totalKelas7);
    }
    print(totalPerKelas);
  }

  int aktif = 0;

  final List image = [
    "assets/Slide-3.png",
    "assets/Slide-2.png",
    "assets/Slide-1.png",
  ];

  final List tingkatKelas = [
    9,
    8,
    7,
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
                        "Presensi Murid",
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
                      height: bodyHeight * (0.038),
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
                      height: bodyHeight * 0.04,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Color(0xFFFBFBFB),
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
                          child: Container(
                            width: bodyHeight * 0.28,
                            decoration: BoxDecoration(
                              color: aktif == tingkatKelas[index]
                                  ? Color(0xFFEDF1F7)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(202, 184, 184, 0.25),
                                  blurRadius: 3.0,
                                  offset: Offset(0.0, 2.0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    'Kelas ${tingkatKelas[index]}',
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
                                            '${totalPerKelas[index]} Kelas',
                                            style: GoogleFonts.rubik(
                                                color: const Color(0xFF4D5569),
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
                            setState(() {
                              aktif = tingkatKelas[index];
                              print(aktif);
                            });
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
                          height: bodyHeight,
                          child: ListView.builder(
                            itemCount: kelas.length,
                            itemBuilder: (context, index) {
                              return kelas[index].contains(aktif.toString())
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      margin: EdgeInsets.only(bottom: 20),
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
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 15.0),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10),
                                                    child: Text(
                                                      kelas[index],
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                  const Icon(
                                                      Icons.arrow_forward_ios,
                                                      size: 20),
                                                ],
                                              ),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  PageRouteBuilder(
                                                    pageBuilder: (context,
                                                            animation1,
                                                            animation2) =>
                                                        PresensiMurid2(
                                                            // kelas: kelas[index],
                                                            ),
                                                    transitionDuration:
                                                        Duration.zero,
                                                    reverseTransitionDuration:
                                                        Duration.zero,
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : SizedBox(
                                      height: 0,
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
