import 'package:cekula/cekupay/bayar_cekupay.dart';
import 'package:cekula/cekupay/cekupay2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';

class TopUpCekupay extends StatefulWidget {
  @override
  State<TopUpCekupay> createState() => _TopUpCekupayState();
}

class _TopUpCekupayState extends State<TopUpCekupay> {
  String aktif = "Cekupay";

  void pilihCekupay() {
    setState(() {
      aktif = "Cekupay";
    });
  }

  void pilihPembelian() {
    setState(() {
      aktif = "Pembelian";
    });
  }

  void pilihPengambilan() {
    setState(() {
      aktif = "Pengambilan";
    });
  }

  final List jenisTransaksi = [
    "Top Up",
    "Pembayaran",
    "Top Up",
    "Pembayaran",
    "Top Up",
  ];

  final List namaTransaksi = [
    "Kantin",
    "Koperasi",
    "Koperasi",
    "Kantin",
    "Koperasi",
  ];

  final List tanggal = [
    "26 Oktober 2022",
    "25 Oktober 2022",
    "24 Oktober 2022",
    "23 Oktober 2022",
    "22 Oktober 2022",
  ];

  final List jam = [
    "14.35",
    "10.21",
    "09.46",
    "07.16",
    "11.13",
  ];

  final List biaya = [
    "Rp 10.000",
    "Rp 50.000",
    "Rp 15.000",
    "Rp 7.000",
    "Rp 25.000",
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
                    "Koperasi",
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
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: mediaQueryWidth,
                        height: bodyHeight,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        child: Text("Cekupay",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                                fontWeight: aktif == "Cekupay"
                                                    ? FontWeight.w600
                                                    : FontWeight.normal)),
                                        onTap: () {
                                          pilihCekupay();
                                        },
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        height: 3,
                                        width: (mediaQueryWidth - 48) * 1 / 3,
                                        decoration: aktif == "Cekupay"
                                            ? BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(40),
                                                    topLeft:
                                                        Radius.circular(40)),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: <Color>[
                                                    const Color(0xFF9FC3F9),
                                                    const Color(0xFF83DBE0),
                                                  ],
                                                ),
                                              )
                                            : BoxDecoration(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        child: Text("Pembelian",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                                fontWeight: aktif == "Pembelian"
                                                    ? FontWeight.w600
                                                    : FontWeight.normal)),
                                        onTap: () {
                                          pilihPembelian();
                                        },
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        height: 3,
                                        width: (mediaQueryWidth - 48) * 1 / 3,
                                        decoration: aktif == "Pembelian"
                                            ? BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(40),
                                                    topLeft:
                                                        Radius.circular(40)),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: <Color>[
                                                    const Color(0xFF9FC3F9),
                                                    const Color(0xFF83DBE0),
                                                  ],
                                                ),
                                              )
                                            : BoxDecoration(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        child: Text("Pengambilan",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                                fontWeight:
                                                    aktif == "Pengambilan"
                                                        ? FontWeight.w600
                                                        : FontWeight.normal)),
                                        onTap: () {
                                          pilihPengambilan();
                                        },
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        height: 3,
                                        width: (mediaQueryWidth - 48) * 1 / 3,
                                        decoration: aktif == "Pengambilan"
                                            ? BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(40),
                                                    topLeft:
                                                        Radius.circular(40)),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: <Color>[
                                                    const Color(0xFF9FC3F9),
                                                    const Color(0xFF83DBE0),
                                                  ],
                                                ),
                                              )
                                            : BoxDecoration(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Denda :",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFF4D5569)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "RP 25.000,-",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFF9FC3F9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Expanded(
                                  child: Center(
                                      child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Tunjukkan barcode-mu pada pegawai koperasi",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF4D5569)),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xFFEDF1F7)),
                                    width: 265,
                                    height: 265,
                                    child: Center(
                                      child: Image.asset(
                                        "assets/Barcode.png",
                                        width: 200,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: bodyHeight * 0.33375,
                                    width: mediaQueryWidth,
                                    color: Colors.white,
                                  ),
                                ],
                              )))
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
          Positioned(bottom: 0, child: const RoundedAlertBox()),
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
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      width: mediaQueryWidth - 48,
      height: 39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF9FC3F9), Color(0xFF83DBE0)],
        ),
      ),
      child: MaterialButton(
        child: Text(
          'Top Up',
          style: GoogleFonts.notoSans(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        ),
        onPressed: openAlertBox,
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
                          // Navigator.pushReplacement(
                          //   context,
                          //   PageRouteBuilder(
                          //     pageBuilder: (context, animation1, animation2) =>
                          //         JadwalSekolah1(),
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
                    "assets/alert-jadwal.png",
                    width: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Posting Jadwal Berhasil",
                    style: GoogleFonts.notoSans(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Silahkan kembali ke\nhalaman jadwal sekolah",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF797F8F)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
