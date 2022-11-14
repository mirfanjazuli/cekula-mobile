import 'package:cekula/pembelian/pembelian1.dart';
import 'package:cekula/peminjaman_buku/peminjaman_buku1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/jadwal_sekolah/jadwal_sekolah1.dart';

class BuatPembelian extends StatefulWidget {
  const BuatPembelian({Key? key}) : super(key: key);

  @override
  State<BuatPembelian> createState() => _BuatPembelianState();
}

class _BuatPembelianState extends State<BuatPembelian> {
  int total = 0;
  final List produk = [
    "Buku Tulis",
    "Sabuk",
    "Dasi",
    "Topi",
    "Stabilo",
    "Stipo",
    "Penghapus",
    "Pulpen",
    "Pensil",
    "Buku Gambar",
  ];

  final List tersedia = [5, 2, 5, 5, 12, 14, 10, 9, 22, 7];

  final List harga = [
    1000,
    1000,
    2000,
    4000,
    1000,
    1000,
    1000,
    2000,
    4000,
    1000,
  ];

  List jumlahDibeli = <int>[];
  void addItems() {
    jumlahDibeli.add(0);
  }

  @override
  void initState() {
    int n = produk.length;
    for (int a = 1; a < n; a++) {
      addItems();
    }
    addItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final paddingHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      drawer: const DrawerView(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF91ceec),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: bodyHeight * 0.10625 + 20,
                ),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      height: bodyHeight * (1 - 0.10625) - 87 - paddingHeight,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nama Pembeli",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: TextFormField(
                                  // initialValue: "15/09/2022",
                                  decoration: InputDecoration(
                                    hintText: 'Masukkan nama pembeli',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Barang yang dibeli:",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: bodyHeight,
                            width: mediaQueryWidth,
                            color: Colors.white,
                            child: ListView.builder(
                              padding: const EdgeInsets.only(bottom: 350),
                              itemCount: produk.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          produk[index],
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFF4D5569)),
                                        ),
                                        Container(
                                            width: 77,
                                            height: 26,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Color(0xFFD2D4DA))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  child: Container(
                                                    height: 26,
                                                    width: 25,
                                                    child: Center(
                                                      child: Image.asset(
                                                          "assets/-.png",
                                                          width: 9,
                                                          color: jumlahDibeli[
                                                                      index] ==
                                                                  0
                                                              ? Color(
                                                                  0xFFD2D4DA)
                                                              : Color(
                                                                  0xFF83DBE0)),
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    if (jumlahDibeli[index] !=
                                                        0) {
                                                      setState(() {
                                                        jumlahDibeli[index]--;
                                                        int a = harga[index];
                                                        total -= a;
                                                      });
                                                    }
                                                  },
                                                ),
                                                Text(
                                                  '${jumlahDibeli[index]}',
                                                  style: GoogleFonts.notoSans(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF4D5569)),
                                                ),
                                                InkWell(
                                                  child: Container(
                                                    height: 26,
                                                    width: 25,
                                                    child: Center(
                                                      child: Image.asset(
                                                          "assets/+.png",
                                                          width: 11,
                                                          color: jumlahDibeli[
                                                                      index] <
                                                                  tersedia[
                                                                      index]
                                                              ? Color(
                                                                  0xFF83DBE0)
                                                              : Color(
                                                                  0xFFD2D4DA)),
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    if (jumlahDibeli[index] <
                                                        tersedia[index]) {
                                                      setState(() {
                                                        jumlahDibeli[index]++;
                                                        int a = harga[index];
                                                        total += a;
                                                      });
                                                    }
                                                  },
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      height: 15,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jumlah Pembayaran :",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF4D5569)),
                              ),
                              Text(
                                "RP ${total},-",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF9FC3F9)),
                              ),
                            ],
                          ),
                          Container(
                            width: 156,
                            height: 39,
                            decoration: total != 0
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF9FC3F9),
                                        Color(0xFF83DBE0)
                                      ],
                                    ),
                                  )
                                : BoxDecoration(
                                    color: Color(0xFFD2D4DA),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                            child: MaterialButton(
                              child: Text(
                                'Konfirmasi',
                                style: GoogleFonts.notoSans(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: openAlertBox,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: bodyHeight * 0.13125,
                  width: mediaQueryWidth,
                  child: Stack(
                    children: [
                      AppBar(
                        automaticallyImplyLeading: false,
                        leadingWidth: 20,
                        toolbarHeight: bodyHeight * 0.10625,
                        backgroundColor: Colors.white,
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
                                          pageBuilder: (context, animation1,
                                                  animation2) =>
                                              Pembelian1(),
                                          transitionDuration: Duration.zero,
                                          reverseTransitionDuration:
                                              Duration.zero,
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_back));
                              }),
                              Text(
                                "Buat Data Pembelian",
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
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: bodyHeight * 0.10625 - 1,
                child: Container(
                  width: mediaQueryWidth,
                  height:
                      (bodyHeight * 0.13125) - (bodyHeight * 0.10625 - 1) + 1,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: Visibility(
      //   visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
      //   child: Container(
      //     height: 100,
      //     width: mediaQueryWidth,
      //     color: Colors.red,
      //   ),
      // ),
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
                                  JadwalSekolah1(),
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
