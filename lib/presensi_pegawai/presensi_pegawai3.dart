import 'package:cekula/presensi_pegawai/presensi_pegawai1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';

class PresensiPegawai3 extends StatefulWidget {
  @override
  State<PresensiPegawai3> createState() => _PresensiPegawai3State();
}

class _PresensiPegawai3State extends State<PresensiPegawai3> {
  String aktif = "A";

  void pilihA() {
    setState(() {
      aktif = "A";
    });
  }

  void pilihB() {
    setState(() {
      aktif = "B";
    });
  }

  void pilihC() {
    setState(() {
      aktif = "C";
    });
  }

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

  final List kehadiran = [
    "A",
    "H",
    "H",
    "H",
    "I",
    "A",
    "H",
    "H",
    "H",
    "I",
    "H",
    "H",
  ];

  final List waktu = [
    "07 : 32",
    "07 : 32",
    "07 : 32",
    "07 : 32",
    "07 : 33",
    "07 : 35",
    "07 : 35",
    "07 : 35",
    "07 : 36",
    "07 : 36",
    "07 : 36",
    "07 : 37",
  ];

  final List kode = [
    "201987111",
    "201987112",
    "201987113",
    "201987114",
    "201987115",
    "201987116",
    "201987117",
    "201987118",
    "201987119",
    "201987120",
    "201987121",
    "201987122",
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
                              pageBuilder: (context, animation1, animation2) =>
                                  PresensiPegawai1(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        icon: const Icon(Icons.arrow_back));
                  }),
                  Text(
                    "Presensi Pegawai",
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
                          top: 20,
                        ),
                        height: bodyHeight * (1 - 0.10625 - 0.0875) - 61 + 20,
                        width: mediaQueryWidth,
                        color: Colors.white,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 25,
                          ),
                          padding: const EdgeInsets.only(top: 5, bottom: 148),
                          itemCount: nama.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 24),
                              width: mediaQueryWidth,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(255, 237, 237, 237),
                                        blurRadius: 6.0,
                                        offset: Offset(0, 2)),
                                  ]),
                              // color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            nama[index],
                                            style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFF4D5569),
                                            ),
                                          ),
                                          Text(
                                            kehadiran[index],
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
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "04/11/2022",
                                            style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFF4D5569),
                                            ),
                                          ),
                                          Text(
                                            waktu[index],
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
                                          top: 10.0, bottom: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            kode[index],
                                            style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFA9C9FA),
                                            ),
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
                                                  // Navigator.pushReplacement(
                                                  //   context,
                                                  //   PageRouteBuilder(
                                                  //     pageBuilder: (context,
                                                  //             animation1,
                                                  //             animation2) =>
                                                  //         const EditPeminjamanFasilitas(),
                                                  //     transitionDuration:
                                                  //         Duration.zero,
                                                  //     reverseTransitionDuration:
                                                  //         Duration.zero,
                                                  //   ),
                                                  // );
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, bottom: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Lihat Foto",
                                                style: GoogleFonts.notoSans(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xFFA9C9FA),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset(
                                                'assets/Arrow-R-Circle.png',
                                                width: 24,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                            ;
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
                      height: 20,
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
                      height: 20 + 1,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            // top: bodyHeight * 0.88125,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24, bottom: 24),
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
                  ),
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation1, animation2) =>
                    //         const BuatJadwalSekolah(),
                    //     transitionDuration: Duration.zero,
                    //     reverseTransitionDuration: Duration.zero,
                    //   ),
                    // );
                  },
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  height: 87,
                  width: mediaQueryWidth,
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      width: mediaQueryWidth,
                      height: 39,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Color(0xFF9FC3F9),
                              Color(0xFF83DBE0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Konfirmasi Semua",
                        style: GoogleFonts.notoSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFBFBFB)),
                      )),
                    ),
                  ),
                )
              ],
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
                          // Navigator.pushReplacement(
                          //   context,
                          //   PageRouteBuilder(
                          //     pageBuilder: (context, animation1, animation2) =>
                          //         PresensiMurid4(),
                          //     transitionDuration: Duration.zero,
                          //     reverseTransitionDuration: Duration.zero,
                          //   ),
                          // );
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
