import 'package:cekula/laporan_data_murid/laporan_data_murid1.dart';
import 'package:cekula/laporan_keuangan/laporan_keuangan1.dart';
import 'package:cekula/laporan_presensi_murid/laporan_presensi_murid1.dart';
import 'package:cekula/laporan_presensi_pegawai/laporan_presensi_pegawai1.dart';
import 'package:cekula/presensi_murid/presensi_murid1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/berita_kelas/berita_kelas1.dart';
import 'package:cekula/berita_sekolah/berita_sekolah1.dart';
import 'package:cekula/daftar_ekstra/daftar_ekstra1.dart';
import 'package:cekula/data_murid/data_murid1.dart';
import 'package:cekula/data_mutasi_murid/data_mutasi_murid1.dart';
import 'package:cekula/data_pegawai/data_pegawai1.dart';
import 'package:cekula/home_page.dart';
import 'package:cekula/jadwal_kelas/jadwal_kelas1.dart';
import 'package:cekula/kartu_pelajar_digital/kartu_pelajar1.dart';
import 'package:cekula/monitoring_osis/monitoring_osis1.dart';
import 'package:cekula/peminjaman_fasilitas/peminjaman_fasilitas1.dart';
import 'package:cekula/penerimaan_murid_baru/penerimaan_murid1.dart';
import 'package:cekula/penilaian_pembelajaran/penilaian_pembelajaran1.dart';
import 'package:cekula/rapor_murid/rapor_murid1.dart';

import 'jadwal_sekolah/jadwal_sekolah1.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  bool _isVisible_akademik = false;

  void showToastAkademik() {
    setState(() {
      _isVisible_akademik = !_isVisible_akademik;
      _isVisible_presensi = false;
      _isVisible_berita = false;
      _isVisible_administrasi = false;
      _isVisible_fasilitas = false;
      _isVisible_nonakademik = false;
      _isVisible_laporan = false;
    });
  }

  bool _isVisible_presensi = false;

  void showToastPresensi() {
    setState(() {
      _isVisible_presensi = !_isVisible_presensi;
      _isVisible_akademik = false;
      _isVisible_berita = false;
      _isVisible_administrasi = false;
      _isVisible_fasilitas = false;
      _isVisible_nonakademik = false;
      _isVisible_laporan = false;
    });
  }

  bool _isVisible_berita = false;

  void showToastBerita() {
    setState(() {
      _isVisible_berita = !_isVisible_berita;
      _isVisible_akademik = false;
      _isVisible_presensi = false;
      _isVisible_administrasi = false;
      _isVisible_fasilitas = false;
      _isVisible_nonakademik = false;
      _isVisible_laporan = false;
    });
  }

  bool _isVisible_administrasi = false;

  void showToastAdministrasi() {
    setState(() {
      _isVisible_administrasi = !_isVisible_administrasi;
      _isVisible_akademik = false;
      _isVisible_presensi = false;
      _isVisible_berita = false;
      _isVisible_fasilitas = false;
      _isVisible_nonakademik = false;
      _isVisible_laporan = false;
    });
  }

  bool _isVisible_fasilitas = false;

  void showToastFasilitas() {
    setState(() {
      _isVisible_fasilitas = !_isVisible_fasilitas;
      _isVisible_akademik = false;
      _isVisible_presensi = false;
      _isVisible_berita = false;
      _isVisible_administrasi = false;
      _isVisible_nonakademik = false;
      _isVisible_laporan = false;
    });
  }

  bool _isVisible_nonakademik = false;

  void showToastNonakademik() {
    setState(() {
      _isVisible_nonakademik = !_isVisible_nonakademik;
      _isVisible_akademik = false;
      _isVisible_presensi = false;
      _isVisible_berita = false;
      _isVisible_administrasi = false;
      _isVisible_fasilitas = false;
      _isVisible_laporan = false;
    });
  }

  bool _isVisible_laporan = false;

  void showToastLaporan() {
    setState(() {
      _isVisible_laporan = !_isVisible_laporan;
      _isVisible_akademik = false;
      _isVisible_presensi = false;
      _isVisible_berita = false;
      _isVisible_administrasi = false;
      _isVisible_fasilitas = false;
      _isVisible_nonakademik = false;
    });
  }

  // final List akademik = [
  //   "Jadwal Sekolah",
  //   "Jadwal Kelas",
  //   "Rapor Murid",
  //   "Penilaian\nPembelajaran",
  //   "Kartu Pelajar\nDigital"
  // ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            width: mediaQueryWidth * 0.527,
            height: mediaQueryHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(left: 24),
                    width: double.infinity,
                    height: bodyHeight * 0.16,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          "assets/logo_cekula.png",
                          width: 100,
                        ),
                      ],
                    )),
                // Container(
                //   height: 100,
                //   child: ListView.builder(
                //     itemBuilder: (context, index) {
                //       return Padding(
                //         padding: const EdgeInsets.all(5),
                //         child:
                //             Text(akademik[index], style: TextStyle(fontSize: 12)),
                //       );
                //     },
                //     itemCount: akademik.length,
                //   ),
                // ),

                //BERANDA
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icon-home.png",
                            width: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Beranda",
                            style: GoogleFonts.rubik(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4D5569)),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                HomePage(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  // height: 20,
                  height: mediaQueryHeight * 0.02,
                ),

                //AKADEMIK
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-akademik.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Akademik",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_akademik == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastAkademik();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_akademik,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Jadwal Sekolah",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
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
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Jadwal Kelas",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          JadwalKelas1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Rapor Murid",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          RaporMurid1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Penilaian\nPembelajaran",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          PenilaianPembelajaran1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Kartu Pelajar\nDigital",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          KartuPelajar1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Evaluasi dan\nKurikulum\nPendidikan",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   PageRouteBuilder(
                              //     pageBuilder:
                              //         (context, animation1, animation2) =>
                              //             KartuPelajar1(),
                              //     transitionDuration: Duration.zero,
                              //     reverseTransitionDuration: Duration.zero,
                              //   ),
                              // );
                            },
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //PRESENSI
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-presensi.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Presensi",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_presensi == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastPresensi();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_presensi,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Presensi Pegawai",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   PageRouteBuilder(
                              //     pageBuilder:
                              //         (context, animation1, animation2) =>
                              //             BeritaSekolah1(),
                              //     transitionDuration: Duration.zero,
                              //     reverseTransitionDuration: Duration.zero,
                              //   ),
                              // );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Presensi Murid",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          PresensiMurid1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //BERITA
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-berita.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Berita",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_berita == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastBerita();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_berita,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Berita Sekolah",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          BeritaSekolah1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Berita Kelas",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          BeritaKelas1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //ADMINISTRASI
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-administrasi.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Administrasi",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_administrasi == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastAdministrasi();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_administrasi,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Keuangan",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   PageRouteBuilder(
                              //     pageBuilder:
                              //         (context, animation1, animation2) =>
                              //             JadwalSekolah1(),
                              //     transitionDuration: Duration.zero,
                              //     reverseTransitionDuration: Duration.zero,
                              //   ),
                              // );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Penerimaan\nMurid Baru",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          PenerimaanMuridBaru1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Data Murid",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          DataMurid1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Data Mutasi\nMurid",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          DataMutasiMurid1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Data Pegawai",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          DataPegawai1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //FASILITAS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-fasilitas.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Fasilitas",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_fasilitas == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastFasilitas();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_fasilitas,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Perpustakaan",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   PageRouteBuilder(
                              //     pageBuilder:
                              //         (context, animation1, animation2) =>
                              //             JadwalSekolah1(),
                              //     transitionDuration: Duration.zero,
                              //     reverseTransitionDuration: Duration.zero,
                              //   ),
                              // );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Peminjaman\nFasilitas",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          PeminjamanFasilitas1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          Text(
                            "Kantin",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          Text(
                            "Koperasi",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //NON-AKADEMIK
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-nonakademik.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Non-\nAkademik",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_nonakademik == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastNonakademik();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_nonakademik,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Monitoring\nKegiatan OSIS",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          MonitoringOsis1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Monitoring\nEkstrakurikuler",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          DaftarEkstra1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //LAPORAN
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icon-laporan.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Laporan",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              _isVisible_laporan == false
                                  ? new Container(
                                      child: Image.asset(
                                        "assets/Arrow-D.png",
                                        width: 20,
                                      ),
                                    )
                                  : new Container(
                                      child: Image.asset(
                                        "assets/Arrow-U.png",
                                        width: 20,
                                      ),
                                    ),
                            ],
                          ),
                          onTap: () {
                            showToastLaporan();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible_laporan,
                  child: Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 8, left: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "Laporan\nPresensi\nPegawai",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          LaporanPresensiPegawai1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Laporan\nPresensi Murid",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          LaporanPresensiMurid1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Laporan Data\nMurid",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          LaporanDataMurid1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Laporan\nKeuangan",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          LaporanKeuangan1(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.01,
                          ),
                          InkWell(
                            child: Text(
                              "Laporan\nTransaksi",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   PageRouteBuilder(
                              //     pageBuilder:
                              //         (context, animation1, animation2) =>
                              //             KartuPelajar1(),
                              //     transitionDuration: Duration.zero,
                              //     reverseTransitionDuration: Duration.zero,
                              //   ),
                              // );
                            },
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),

                //KELUAR

                // Divider(
                //   height: 1,
                //   color: Colors.grey,
                // ),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: mediaQueryWidth,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/icon-keluar.png",
                        width: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Keluar",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFED6562)),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation1, animation2) =>
                    //         HomePage(),
                    //     transitionDuration: Duration.zero,
                    //     reverseTransitionDuration: Duration.zero,
                    //   ),
                    // );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
