import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/jadwal_kelas/buat_jadwal_kelas.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas2.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas4.dart';

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
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          const JadwalKelas2(),
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
                      width: mediaQueryWidth,
                      height: bodyHeight * (0.0625 + 0.385),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            height: bodyHeight * 0.30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kelas 7 A",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Senin",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
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
                                            pageBuilder: (context, animation1,
                                                    animation2) =>
                                                const JadwalKelas4(),
                                            transitionDuration: Duration.zero,
                                            reverseTransitionDuration:
                                                Duration.zero,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Selasa",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
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
                                            pageBuilder: (context, animation1,
                                                    animation2) =>
                                                const JadwalKelas4(),
                                            transitionDuration: Duration.zero,
                                            reverseTransitionDuration:
                                                Duration.zero,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rabu",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Image.asset(
                                      'assets/Arrow-R.png',
                                      width: 20,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Kamis",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Image.asset(
                                      'assets/Arrow-R.png',
                                      width: 20,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jum'at",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Image.asset(
                                      'assets/Arrow-R.png',
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    width: 260,
                    height: bodyHeight * 0.3025,
                    // color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/Kalender.png',
                          width: 200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pilih jadwal mata pelajaran berdasarkan hari ",
                          style: GoogleFonts.notoSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF797F8F)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: mediaQueryWidth,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.only(
                              right: 24, bottom: 24, top: 24),
                          height: 50,
                          width: 50,
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
                                  const BuatJadwalKelas(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                      ),
                    ],
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
