import 'package:cekula/Screens/berita_sekolah/berita_sekolah1.dart';
import 'package:cekula/Screens/jadwal_sekolah/jadwal_sekolah1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
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
      drawer: DrawerView(),
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: bodyHeight * 0.10625 - 1),
                  width: mediaQueryWidth,
                  height: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color(0xFF9FC3F9),
                        Color(0xFF83DBE0),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/Profil.png'),
                                radius: 24,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Yulia Adiba",
                                  style: GoogleFonts.rubik(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Administrator",
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: bodyHeight * 0.10625,
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    leadingWidth: 20,
                    toolbarHeight: bodyHeight * 0.10625,
                    backgroundColor: Color(0xFF91ceec),
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
                                icon: new Icon(Icons.menu));
                          }),
                          Text(
                            "Beranda",
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
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: bodyHeight * 0.10625 - 1 + 90),
              height: 1000,
              color: Colors.white,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Berita Sekolah",
                          style: GoogleFonts.rubik(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "Lihat Semua",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9FC3F9)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        const BeritaSekolah1(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    height: 218,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFEDF1F7),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sampul-berita-1.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Siswa-Siswi Berprestasi Oktober 2022",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 8),
                                          child: Text(
                                              "15 Oktober - 23 Oktober 2022",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFEDF1F7),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sampul-berita-1.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Siswa-Siswi Berprestasi Oktober 2022",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 8),
                                          child: Text(
                                              "15 Oktober - 23 Oktober 2022",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFEDF1F7),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sampul-berita-1.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Siswa-Siswi Berprestasi Oktober 2022",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 8),
                                          child: Text(
                                              "15 Oktober - 23 Oktober 2022",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jadwal Sekolah",
                          style: GoogleFonts.rubik(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "Lihat Semua",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF9FC3F9)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        JadwalSekolah1(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    height: 218,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFEDF1F7),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sampul-jadwal-1.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kegiatan tengah semester",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 8),
                                          child: Text(
                                              "15 Oktober - 23 Oktober 2022",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFEDF1F7),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sampul-jadwal-1.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kegiatan tengah semester",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 8),
                                          child: Text(
                                              "15 Oktober - 23 Oktober 2022",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 245,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFEDF1F7),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sampul-jadwal-1.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kegiatan tengah semester",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 8),
                                          child: Text(
                                              "15 Oktober - 23 Oktober 2022",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
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
