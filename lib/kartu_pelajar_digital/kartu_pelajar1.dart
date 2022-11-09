import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/kartu_pelajar_digital/kartu_pelajar2.dart';

class KartuPelajar1 extends StatelessWidget {
  const KartuPelajar1({Key? key}) : super(key: key);

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
                "Kartu Pelajar Digital",
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
                        "Kartu Pelajar Digital",
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
                      height: bodyHeight * (0.035) - 1,
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
                      // height: bodyHeight * 0.07,
                      height: bodyHeight * 0.035,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      // child:
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Column(
                      //         mainAxisAlignment: MainAxisAlignment.start,
                      //         children: [
                      //           InkWell(
                      //             child: Text(
                      //               "Jadwal Sekolah",
                      //               style: GoogleFonts.notoSans(
                      //                 fontSize: 14,
                      //               ),
                      //             ),
                      //             onTap: () {
                      //               Navigator.pushReplacement(
                      //                 context,
                      //                 PageRouteBuilder(
                      //                   pageBuilder: (context, animation1,
                      //                           animation2) =>
                      //                       JadwalSekolah1(),
                      //                   transitionDuration: Duration.zero,
                      //                   reverseTransitionDuration:
                      //                       Duration.zero,
                      //                 ),
                      //               );
                      //             },
                      //           ),
                      //           Container(
                      //             margin: EdgeInsets.only(top: 10),
                      //             height: 3,
                      //             width: mediaQueryWidth * 0.4,
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.only(
                      //                   topRight: Radius.circular(40),
                      //                   topLeft: Radius.circular(40)),
                      //               // gradient: LinearGradient(
                      //               //   begin: Alignment.topCenter,
                      //               //   end: Alignment.bottomCenter,
                      //               //   colors: <Color>[
                      //               //     Color(0xFF9FC3F9),
                      //               //     Color(0xFF83DBE0),
                      //               //   ],
                      //               // ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //       Column(
                      //         mainAxisAlignment: MainAxisAlignment.start,
                      //         children: [
                      //           InkWell(
                      //             child: Text("Jadwal Kelas",
                      //                 style: GoogleFonts.notoSans(
                      //                     fontSize: 14,
                      //                     fontWeight: FontWeight.w600)),
                      //             onTap: () {
                      //               // Navigator.pushReplacement(
                      //               //   context,
                      //               //   PageRouteBuilder(
                      //               //     pageBuilder: (context, animation1,
                      //               //             animation2) =>
                      //               //         JadwalKelas1(),
                      //               //     transitionDuration: Duration.zero,
                      //               //     reverseTransitionDuration:
                      //               //         Duration.zero,
                      //               //   ),
                      //               // );
                      //             },
                      //           ),
                      //           Container(
                      //             margin: EdgeInsets.only(top: 10),
                      //             height: 3,
                      //             width: mediaQueryWidth * 0.4,
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.only(
                      //                   topRight: Radius.circular(40),
                      //                   topLeft: Radius.circular(40)),
                      //               gradient: LinearGradient(
                      //                 begin: Alignment.topCenter,
                      //                 end: Alignment.bottomCenter,
                      //                 colors: <Color>[
                      //                   Color(0xFF9FC3F9),
                      //                   Color(0xFF83DBE0),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  height: bodyHeight * 0.385,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.0, vertical: 10),
                        child: InkWell(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        const KartuPelajar2(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
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
                Flexible(
                  child: SizedBox(
                    width: mediaQueryWidth,
                    // color: Colors.amber,
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
