import 'package:cekula/jadwal_kelas/jadwal_kelas2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/jadwal_kelas/edit_jadwal_kelas.dart';

class JadwalKelas3 extends StatelessWidget {
  const JadwalKelas3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        // toolbarHeight: bodyHeight * 0.10625,
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
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: bodyHeight * 0.1062,
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
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          JadwalKelas2(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_back));
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
            Padding(
              padding: EdgeInsets.only(top: bodyHeight * 0.10625 - 1),
              child: Stack(
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
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    width: mediaQueryWidth,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kelas 7 A",
                              style: GoogleFonts.notoSans(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Selasa",
                              style: GoogleFonts.notoSans(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: bodyHeight * 0.07),
                    padding: const EdgeInsets.only(left: 21, right: 21),
                    width: mediaQueryWidth,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 3.0, left: 3.0, bottom: 10),
                          child: Container(
                            width: mediaQueryWidth,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Image.asset(
                                            'assets/jadwal-upacara.png',
                                            width: 24,
                                          ),
                                        ),
                                        Text(
                                          "Upacara",
                                          style: GoogleFonts.notoSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xFF4D5569),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Jam Pelajaran :",
                                          style: GoogleFonts.notoSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF4D5569),
                                          ),
                                        ),
                                        Text(
                                          "07.00 - 07.40",
                                          style: GoogleFonts.notoSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF4D5569),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                            'assets/Edit.png',
                                            width: 16,
                                          ),
                                          onTap: () {
                                            Navigator.pushReplacement(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    const EditJadwalKelas(),
                                                transitionDuration:
                                                    Duration.zero,
                                                reverseTransitionDuration:
                                                    Duration.zero,
                                              ),
                                            );
                                          },
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const RoundedAlertBox()
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),

                    // child: ListView(
                    //   children: [
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 10,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    //       child: Container(
                    //         width: mediaQueryWidth,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(6),
                    //             color: Colors.white,
                    //             boxShadow: const [
                    //               BoxShadow(
                    //                   color: Color.fromARGB(255, 237, 237, 237),
                    //                   blurRadius: 6.0,
                    //                   offset: Offset(0, 2)),
                    //             ]),
                    //         child: Padding(
                    //           padding:
                    //               const EdgeInsets.symmetric(horizontal: 10.0),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: const EdgeInsets.only(
                    //                           right: 10.0),
                    //                       child: Image.asset(
                    //                         'assets/jadwal-upacara.png',
                    //                         width: 24,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "Upacara",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(top: 8.0),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "Jam Pelajaran :",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       "07.00 - 07.40",
                    //                       style: GoogleFonts.notoSans(
                    //                         fontSize: 12,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color(0xFF4D5569),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     top: 8.0, bottom: 10.0),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.end,
                    //                   children: [
                    //                     InkWell(
                    //                       child: Image.asset(
                    //                         'assets/Edit.png',
                    //                         width: 16,
                    //                       ),
                    //                       onTap: () {
                    //                         Navigator.pushReplacement(
                    //                           context,
                    //                           PageRouteBuilder(
                    //                             pageBuilder: (context,
                    //                                     animation1,
                    //                                     animation2) =>
                    //                                 const EditJadwalKelas(),
                    //                             transitionDuration:
                    //                                 Duration.zero,
                    //                             reverseTransitionDuration:
                    //                                 Duration.zero,
                    //                           ),
                    //                         );
                    //                       },
                    //                     ),
                    //                     const SizedBox(
                    //                       width: 8,
                    //                     ),
                    //                     const RoundedAlertBox()
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 50,
                    //     ),
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
              // color: Colors.amber,
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
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const JadwalKelas3(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
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
                        // backgroundColor: Colors.teal,
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
