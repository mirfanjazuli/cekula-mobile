import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas2.dart';
import 'package:cekula/rapor_murid/rapor_murid3.dart';

class RaporMurid4 extends StatelessWidget {
  const RaporMurid4({Key? key}) : super(key: key);

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
                                          const RaporMurid3(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_back));
                      }),
                      Text(
                        "Rapor Murid",
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
                              "Ahmad Jourji Zaidan",
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
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    width: mediaQueryWidth,
                    color: Colors.white,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 25 - (bodyHeight * 0.02),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Identitas Murid",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Semester 1",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Semester 2",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Semester 3",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Semester 4",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Semester 5",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Semester 6",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                child: Image.asset(
                                  'assets/Arrow-R.png',
                                  width: 20,
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder:
                                  //         (context, animation1, animation2) =>
                                  //             KartuPelajar4(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
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
