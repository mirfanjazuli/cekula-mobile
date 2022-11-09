import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas1.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas3.dart';
import 'package:cekula/jadwal_sekolah/jadwal_sekolah1.dart';

class JadwalKelas2 extends StatelessWidget {
  const JadwalKelas2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                backgroundColor: const Color(0xFF91ceec),
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
                                  child: Text(
                                    "Jadwal Sekolah",
                                    style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                const JadwalSekolah1(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 3,
                                  width: mediaQueryWidth * 0.4,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40)),
                                    // gradient: LinearGradient(
                                    //   begin: Alignment.topCenter,
                                    //   end: Alignment.bottomCenter,
                                    //   colors: <Color>[
                                    //     Color(0xFF9FC3F9),
                                    //     Color(0xFF83DBE0),
                                    //   ],
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  child: Text("Jadwal Kelas",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                const JadwalKelas1(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
                                  },
                                ),
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
                SizedBox(
                  // color: Colors.red,
                  height: bodyHeight * 0.385,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 10),
                        child: Container(
                          margin: const EdgeInsets.only(left: 21),
                          width: bodyHeight * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFEDF1F7),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/Slide-1.png',
                                    width: bodyHeight * 0.2,
                                  ),
                                ),
                                Text(
                                  'Kelas 9',
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
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 10),
                        child: Container(
                          margin: const EdgeInsets.only(left: 21),
                          width: bodyHeight * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/Slide-2.png',
                                    width: bodyHeight * 0.2,
                                  ),
                                ),
                                Text(
                                  'Kelas 8',
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
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 10),
                        child: Container(
                          margin: const EdgeInsets.only(left: 21),
                          width: bodyHeight * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/Slide-3.png',
                                    width: bodyHeight * 0.2,
                                  ),
                                ),
                                Text(
                                  'Kelas 7',
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
                      ),
                      const SizedBox(
                        width: 21,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: mediaQueryWidth,
                  height: bodyHeight * 0.3025,
                  child: SizedBox(
                    // color: Colors.amber,
                    height: bodyHeight * 0.25,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: const Text(
                                            "Kelas 9A",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const Icon(Icons.arrow_forward_ios,
                                            size: 20),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation1,
                                                  animation2) =>
                                              const JadwalKelas3(),
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
                          ),

                          // SizedBox(
                          //   height: 10,
                          // ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: const Text(
                                          "Kelas 9B",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
                                      blurRadius: 6.0,
                                      offset: Offset(0, 2)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: const Text(
                                          "Kelas 9C",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward_ios,
                                          size: 20),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: mediaQueryWidth,
                //   height: bodyHeight * 0.14,
                //   // color: Colors.red,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Container(
                //         margin: EdgeInsets.only(right: 24),
                //         height: 50,
                //         width: 50,
                //         padding: EdgeInsets.all(8.0),
                //         decoration: BoxDecoration(
                //           gradient: LinearGradient(
                //             begin: Alignment.centerLeft,
                //             end: Alignment.centerRight,
                //             colors: <Color>[
                //               Color(0xFF9FC3F9),
                //               Color(0xFF83DBE0),
                //             ],
                //           ),
                //           borderRadius: BorderRadius.circular(6),
                //         ),
                //         child: Image.asset(
                //           'assets/Plus.png',
                //           scale: 1,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
