import 'package:cekula/kartu_pelajar_digital/kartu_pelajar1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas2.dart';
import 'package:cekula/kartu_pelajar_digital/buat_kartu_pelajar.dart';
import 'package:cekula/kartu_pelajar_digital/kartu_pelajar3.dart';

class KartuPelajar2 extends StatelessWidget {
  KartuPelajar2({Key? key}) : super(key: key);

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
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            children: [
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder: (context, animation1, animation2) =>
                      //         const JadwalKelas3(),
                      //     transitionDuration: Duration.zero,
                      //     reverseTransitionDuration: Duration.zero,
                      //   ),
                      // );
                    },
                    icon: const Icon(Icons.arrow_back));
              }),
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
                                          const KartuPelajar1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_back));
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: bodyHeight * (0.05 + 0.03125)),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    width: mediaQueryWidth,
                    color: Colors.white,

                    child: ListView.separated(
                      padding: EdgeInsets.only(bottom: 100),
                      separatorBuilder: (context, index) => SizedBox(
                        height: mediaQueryHeight * 0.03125,
                      ),
                      itemCount: nama.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              nama[index],
                              style: GoogleFonts.notoSans(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/Arrow-R.png',
                                width: 20,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            const KartuPelajar3(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),

                    // ListView(
                    //   children: [
                    //     SizedBox(
                    //       height: 25 - (bodyHeight * 0.02),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(bottom: 25.0),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             "Ahmad Jourji Zaidan",
                    //             style: GoogleFonts.notoSans(
                    //                 fontSize: 14, fontWeight: FontWeight.w400),
                    //           ),
                    //           InkWell(
                    //             child: Image.asset(
                    //               'assets/Arrow-R.png',
                    //               width: 20,
                    //             ),
                    //             onTap: () {
                    //               Navigator.pushReplacement(
                    //                 context,
                    //                 PageRouteBuilder(
                    //                   pageBuilder:
                    //                       (context, animation1, animation2) =>
                    //                           const KartuPelajar4(),
                    //                   transitionDuration: Duration.zero,
                    //                   reverseTransitionDuration: Duration.zero,
                    //                 ),
                    //               );
                    //             },
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(bottom: 25.0),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             "Ahmad Jourji Zaidan",
                    //             style: GoogleFonts.notoSans(
                    //                 fontSize: 14, fontWeight: FontWeight.w400),
                    //           ),
                    //           InkWell(
                    //             child: Image.asset(
                    //               'assets/Arrow-R.png',
                    //               width: 20,
                    //             ),
                    //             onTap: () {
                    //               Navigator.pushReplacement(
                    //                 context,
                    //                 PageRouteBuilder(
                    //                   pageBuilder:
                    //                       (context, animation1, animation2) =>
                    //                           const KartuPelajar4(),
                    //                   transitionDuration: Duration.zero,
                    //                   reverseTransitionDuration: Duration.zero,
                    //                 ),
                    //               );
                    //             },
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(bottom: 25.0),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Text(
                    //             "Ahmad Jourji Zaidan",
                    //             style: GoogleFonts.notoSans(
                    //                 fontSize: 14, fontWeight: FontWeight.w400),
                    //           ),
                    //           InkWell(
                    //             child: Image.asset(
                    //               'assets/Arrow-R.png',
                    //               width: 20,
                    //             ),
                    //             onTap: () {
                    //               Navigator.pushReplacement(
                    //                 context,
                    //                 PageRouteBuilder(
                    //                   pageBuilder:
                    //                       (context, animation1, animation2) =>
                    //                           const KartuPelajar4(),
                    //                   transitionDuration: Duration.zero,
                    //                   reverseTransitionDuration: Duration.zero,
                    //                 ),
                    //               );
                    //             },
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       height: 48 + 24 - 1,
                    //     ),
                    //   ],
                    // ),
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
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const BuatKartuPelajar(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
