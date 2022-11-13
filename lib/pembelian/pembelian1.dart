import 'package:cekula/cekupay/cekupay1.dart';
import 'package:cekula/produk_koperasi/produk_koperasi1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';

class Pembelian1 extends StatelessWidget {
  Pembelian1({Key? key}) : super(key: key);

  final List idTransaksi = [
    "#0000000001",
    "#0000000002",
    "#0000000003",
    "#0000000004",
    "#0000000005",
  ];

  final List nama = [
    "Ahmad Jourji Zaidan",
    "Arsenio Hamas Syahid",
    "Daryl Mahardikasiandi",
    "Dini Anjani",
    "Muhammad Irfan Jazuli",
  ];

  final List idNama = [
    "201984646",
    "201945872",
    "201934352",
    "201345222",
    "201984562",
  ];

  final List harga = [
    "Rp 5.000,-",
    "Rp 8.000,-",
    "Rp 10.000,-",
    "Rp 12.000,-",
    "Rp 7.500,-",
  ];

  final List namaBarang = [
    "Buku",
    "Topi",
    "Sabuk",
    "Dasi",
    "Pensil",
  ];

  final List jumlahBarang = [
    "1",
    "2",
    "1",
    "2",
    "1",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      child: Image.asset(
                        'assets/Bag.png',
                        width: 24,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                ProdukKoperasi1(),
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
                        height: bodyHeight,
                        width: mediaQueryWidth,
                        color: Colors.white,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 25,
                          ),
                          padding: const EdgeInsets.only(top: 25, bottom: 220),
                          itemCount: nama.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 24),
                                width: mediaQueryWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 237, 237, 237),
                                          blurRadius: 6.0,
                                          offset: Offset(0, 2)),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/Perisai.png",
                                                  width: 20,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  "Id Transaksi",
                                                  style: GoogleFonts.notoSans(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xFF4D5569),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              idTransaksi[index],
                                              style: GoogleFonts.notoSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xFFA6AAB4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Container(
                                          height: 1,
                                          width: mediaQueryWidth,
                                          color: Color(0xFFD2D4DA),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              nama[index],
                                              style: GoogleFonts.notoSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF4D5569),
                                              ),
                                            ),
                                            Text(
                                              idNama[index],
                                              style: GoogleFonts.notoSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xFFA6AAB4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: mediaQueryWidth,
                                        color: Colors.white,
                                        child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            separatorBuilder:
                                                (context, index) => SizedBox(
                                                      height: 4,
                                                    ),
                                            padding: EdgeInsets.only(top: 0),
                                            shrinkWrap: true,
                                            itemCount: namaBarang.length,
                                            itemBuilder: (context, index) {
                                              return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    namaBarang[index],
                                                    style: GoogleFonts.notoSans(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: const Color(
                                                          0xFF4D5569),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${jumlahBarang[index]} barang",
                                                    style: GoogleFonts.notoSans(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: const Color(
                                                          0xFFA6AAB4),
                                                    ),
                                                  ),
                                                ],
                                              );
                                              ;
                                            }),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Jumlah Pembayaran",
                                              style: GoogleFonts.notoSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF4D5569),
                                              ),
                                            ),
                                            Text(
                                              harga[index],
                                              style: GoogleFonts.notoSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF9FC3F9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 6.0, bottom: 8.0),
                                        child: Row(
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
                                                //         const EditSumbangBuku(),
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
                                            const RoundedAlertBox(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                // Navigator.pushReplacement(
                                //   context,
                                //   PageRouteBuilder(
                                //     pageBuilder:
                                //         (context, animation1, animation2) =>
                                //             DendaKeterlambatan2(),
                                //     transitionDuration: Duration.zero,
                                //     reverseTransitionDuration: Duration.zero,
                                //   ),
                                // );
                              },
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
                                InkWell(
                                  child: Text("Cekupay",
                                      style:
                                          GoogleFonts.notoSans(fontSize: 14)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                Cekupay1(),
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
                                  width: (mediaQueryWidth - 48) * 1 / 3,
                                  decoration: BoxDecoration(
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
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  child: Text("Pembelian",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600)),
                                  onTap: () {
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   PageRouteBuilder(
                                    //     pageBuilder:
                                    //         (context, animation1, animation2) =>
                                    //             Pembelian1(),
                                    //     transitionDuration: Duration.zero,
                                    //     reverseTransitionDuration:
                                    //         Duration.zero,
                                    //   ),
                                    // );
                                  },
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    height: 3,
                                    width: (mediaQueryWidth - 48) * 1 / 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(40),
                                          topLeft: Radius.circular(40)),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: <Color>[
                                          const Color(0xFF9FC3F9),
                                          const Color(0xFF83DBE0),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  child: Text("Pengambilan",
                                      style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                      )),
                                  onTap: () {
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   PageRouteBuilder(
                                    //     pageBuilder: (context, animation1,
                                    //             animation2) =>
                                    //         Pembelian1(),
                                    //     transitionDuration: Duration.zero,
                                    //     reverseTransitionDuration:
                                    //         Duration.zero,
                                    //   ),
                                    // );
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 3,
                                  width: (mediaQueryWidth - 48) * 1 / 3,
                                  decoration: BoxDecoration(
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
