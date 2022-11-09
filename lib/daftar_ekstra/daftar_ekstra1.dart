import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/daftar_ekstra/buat_daftar_ekstra.dart';
import 'package:cekula/daftar_ekstra/edit_daftar_ekstra.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/penilaian_ekstra/penilaian_ekstra1.dart';

class DaftarEkstra1 extends StatelessWidget {
  const DaftarEkstra1({Key? key}) : super(key: key);

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
                    "Monitoring Ekstrakurikuler",
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
                        child: ListView(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 20, left: 24, right: 24),
                            width: mediaQueryWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFEDF1F7),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ekstra-pramuka.png',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10, right: 5, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ekstrakurikuler Olimpiade",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 0),
                                        child: Text("Toni Mahendra",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 2),
                                        child: Text(
                                            "Jadwal: Hari jumat, 13.00 - 15.00",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                      const EditDaftarEkstra(),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 20, left: 24, right: 24),
                            width: mediaQueryWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFEDF1F7),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ekstra-pmr.png',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10, right: 5, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ekstrakurikuler Olimpiade",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 0),
                                        child: Text("Toni Mahendra",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 2),
                                        child: Text(
                                            "Jadwal: Hari jumat, 13.00 - 15.00",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                      const EditDaftarEkstra(),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 20, left: 24, right: 24),
                            width: mediaQueryWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFEDF1F7),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ekstra-olimpiade.png',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10, right: 5, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ekstrakurikuler Olimpiade",
                                        style: GoogleFonts.notoSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 0),
                                        child: Text("Toni Mahendra",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 2),
                                        child: Text(
                                            "Jadwal: Hari jumat, 13.00 - 15.00",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                      const EditDaftarEkstra(),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          )
                        ]),
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
                                  "Daftar Ekstra",
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
                                  child: Text("Penilaian Ekstra",
                                      style:
                                          GoogleFonts.notoSans(fontSize: 14)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                const PenilaianEkstra1(),
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
                        const BuatDaftarEkstra(),
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
                                  const DaftarEkstra1(),
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
                    "Yakin Ingin Menghapus\nData Ekstrakurikuler?",
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
            ),
          );
        });
  }
}
