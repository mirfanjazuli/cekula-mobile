import 'package:cekula/denda_keterlambatan/denda_keterlambatan1.dart';
import 'package:cekula/denda_keterlambatan/denda_keterlambatan3.dart';
import 'package:cekula/peminjaman_buku/peminjaman_buku1.dart';
import 'package:cekula/radio/radio_denda_buku.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/jadwal_sekolah/jadwal_sekolah1.dart';

class DendaKeterlambatan2 extends StatelessWidget {
  const DendaKeterlambatan2({Key? key}) : super(key: key);

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Id Peminjaman :",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "#0001000001",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Id Buku :",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "0001000001",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Kategori Buku",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "Action",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Judul Buku",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  "A Concise Treatise on the Art ",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFFA6AAB4)),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nama Peminjam",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "Amanda Manopo",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "No. Id Peminjam",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "201989238",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tanggal Peminjaman",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "17/10/2022",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tenggat Peminjaman",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "21/10/2022",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tanggal Pengembalian",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Text(
                                "23/10/20228",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFA6AAB4)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jenis Denda",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xFF9FC3F9)),
                                child: Text(
                                  "Keterlambatan",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Denda",
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF4D5569)),
                              ),
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
                        ],
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 24),
                        width: mediaQueryWidth,
                        height: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF9FC3F9), Color(0xFF83DBE0)],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Bayar Denda',
                            style: GoogleFonts.notoSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                DendaKeterlambatan3(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
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
                                              DendaKeterlambatan1(),
                                          transitionDuration: Duration.zero,
                                          reverseTransitionDuration:
                                              Duration.zero,
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_back));
                              }),
                              Text(
                                "Detail Denda",
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
    );
  }
}
