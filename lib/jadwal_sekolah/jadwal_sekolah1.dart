import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas1.dart';
import 'package:cekula/jadwal_sekolah/buat_jadwal_sekolah.dart';
import 'package:cekula/jadwal_sekolah/edit_jadwal_sekolah.dart';

class JadwalSekolah1 extends StatefulWidget {
  @override
  State<JadwalSekolah1> createState() => _JadwalSekolah1State();
}

class _JadwalSekolah1State extends State<JadwalSekolah1> {
  final List image = [
    "assets/jadwal-sekolah.png",
    "assets/jadwal-sekolah-2.png",
    "assets/jadwal-sekolah-2.png",
  ];

  final List judul = [
    "Kegiatan Tengah Semester",
    "Dies Natalis Sekolah",
    "Pentas Seni Akhir Tahun",
  ];

  final List tanggal = [
    "15 Oktober - 23 Oktober 2022",
    "21 Desember - 28 Desember 2022",
    "29 Desember - 23 Desember 2022",
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
                    "Jadwal",
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
                Stack(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: bodyHeight * 0.0875 - 23,
                        ),
                        height: bodyHeight * (1 - 0.10625 - 0.0875) + 50,
                        width: mediaQueryWidth,
                        color: Colors.white,
                        child: ListView.builder(
                          padding: const EdgeInsets.only(top: 25, bottom: 100),
                          itemCount: judul.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  bottom: 20, left: 24, right: 24),
                              padding: EdgeInsets.only(bottom: 4),
                              width: mediaQueryWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFEDF1F7),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: mediaQueryWidth,
                                    height: 142,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(image[index])),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0,
                                        top: 10,
                                        right: 5,
                                        bottom: 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          judul[index],
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 5),
                                          child: Text(tanggal[index],
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              padding: EdgeInsets.all(3),
                                              constraints:
                                                  const BoxConstraints(),
                                              icon: Image.asset(
                                                'assets/Edit.png',
                                                width: 16,
                                              ),
                                              onPressed: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                  PageRouteBuilder(
                                                    pageBuilder: (context,
                                                            animation1,
                                                            animation2) =>
                                                        const EditJadwalSekolah(),
                                                    transitionDuration:
                                                        Duration.zero,
                                                    reverseTransitionDuration:
                                                        Duration.zero,
                                                  ),
                                                );
                                              },
                                            ),
                                            const SizedBox(
                                              width: 1,
                                            ),
                                            IconButton(
                                              padding: EdgeInsets.all(3),
                                              constraints:
                                                  const BoxConstraints(),
                                              icon: Image.asset(
                                                'assets/Delete.png',
                                                width: 16,
                                              ),
                                              onPressed: openAlertBox,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
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
                      height: bodyHeight * 0.0875,
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
                                Text(
                                  "Jadwal Sekolah",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
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
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  child: Text("Jadwal Kelas",
                                      style:
                                          GoogleFonts.notoSans(fontSize: 14)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                JadwalKelas1(),
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
                                    //     const Color(0xFF9FC3F9),
                                    //     const Color(0xFF83DBE0),
                                    //   ],
                                    // ),
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
                        const BuatJadwalSekolah(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: const EdgeInsets.all(0),
            content: SizedBox(
              width: 290,
              height: 320,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
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
                          icon: Icon(Icons.clear_rounded)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 48,
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
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
