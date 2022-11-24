// import 'package:cekula/jadwal_kelas/jadwal_kelas2.dart';
// import 'package:cekula/jadwal_sekolah/buat_jadwal_sekolah.dart';
// import 'package:cekula/jadwal_sekolah/edit_jadwal_sekolah.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:cekula/drawer.dart';

// class JadwalSekolah1 extends StatefulWidget {
//   const JadwalSekolah1({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<JadwalSekolah1> createState() => _JadwalSekolah1State();
// }

// class _JadwalSekolah1State extends State<JadwalSekolah1> {
//   TabBar get _tabBar => TabBar(
//         indicatorColor: Color(0xFF9FC3F9),
//         indicatorWeight: 3,
//         labelColor: Color(0xFF4D5569),
//         unselectedLabelStyle:
//             GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.w400),
//         labelStyle:
//             GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.w600),
//         tabs: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             child: Text("Jadwal Sekolah"),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             child: Text("Jadwal Kelas"),
//           ),
//         ],
//       );

//   final List sampul = [
//     "assets/jadwal-sekolah.png",
//     "assets/jadwal-sekolah-2.png",
//     "assets/jadwal-sekolah-2.png",
//   ];

//   final List judul = [
//     "Kegiatan Tengah Semester",
//     "Dies Natalis Sekolah",
//     "Pentas Seni Akhir Tahun",
//   ];

//   final List tanggal = [
//     "15 Oktober - 23 Oktober 2022",
//     "21 Desember - 28 Desember 2022",
//     "29 Desember - 23 Desember 2022",
//   ];

//   int aktif = 0;

//   void showToastKelas7() {
//     setState(() {
//       aktif = 7;
//     });
//   }

//   void showToastKelas8() {
//     setState(() {
//       aktif = 8;
//     });
//   }

//   void showToastKelas9() {
//     setState(() {
//       aktif = 9;
//     });
//   }

//   final List image = [
//     "assets/Slide-3.png",
//     "assets/Slide-2.png",
//     "assets/Slide-1.png",
//   ];

//   final List kelas = [
//     "Kelas 7",
//     "Kelas 8",
//     "Kelas 9",
//   ];

//   final List show = [
//     7,
//     8,
//     9,
//   ];

//   final List subkelas = [
//     "A",
//     "B",
//     "C",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final mediaQueryHeight = MediaQuery.of(context).size.height;
//     final mediaQueryWidth = MediaQuery.of(context).size.width;
//     final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0.0,
//           toolbarHeight: bodyHeight * 0.10625,
//           automaticallyImplyLeading: false,
//           title: Padding(
//             padding: const EdgeInsets.only(
//               top: 20,
//             ),
//             child: Row(
//               children: [
//                 Builder(builder: (context) {
//                   return IconButton(
//                       onPressed: () {
//                         Scaffold.of(context).openDrawer();
//                       },
//                       icon: const Icon(Icons.menu));
//                 }),
//                 Text(
//                   "Jadwal",
//                   style: GoogleFonts.rubik(
//                       fontSize: 20, fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ),
//           bottom: PreferredSize(
//             // preferredSize: _tabBar.preferredSize,
//             preferredSize: const Size.fromHeight(37),
//             child: Material(
//               borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(20), topLeft: Radius.circular(20)),
//               color: Color(0xFFFBFBFB),
//               // color: Colors.transparent,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: _tabBar,
//               ),
//             ),
//           ),
//           backgroundColor: Color(0xFFFBFBFB),
//           flexibleSpace: Container(
//             // width: mediaQueryWidth,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: <Color>[
//                   Color(0xFF9FC3F9),
//                   Color(0xFF83DBE0),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         drawer: const DrawerView(),
//         body: TabBarView(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(
//                     top: 10,
//                   ),
//                   height: bodyHeight,
//                   width: mediaQueryWidth,
//                   color: Colors.white,
//                   child: ListView.builder(
//                     padding: const EdgeInsets.only(top: 20, bottom: 76),
//                     itemCount: judul.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: const EdgeInsets.only(
//                             bottom: 20, left: 24, right: 24),
//                         width: mediaQueryWidth,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           color: const Color(0xFFEDF1F7),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               width: mediaQueryWidth,
//                               height: 142,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: AssetImage(sampul[index])),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.0)),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   left: 10.0, top: 10, right: 5, bottom: 5),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     judul[index],
//                                     style: GoogleFonts.notoSans(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(top: 2.0),
//                                     child: Text(tanggal[index],
//                                         style: GoogleFonts.notoSans(
//                                             fontSize: 10,
//                                             fontWeight: FontWeight.w400)),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       InkWell(
//                                         child: Image.asset(
//                                           'assets/Edit.png',
//                                           width: 16,
//                                         ),
//                                         onTap: () {
//                                           Navigator.pushReplacement(
//                                             context,
//                                             PageRouteBuilder(
//                                               pageBuilder: (context, animation1,
//                                                       animation2) =>
//                                                   const EditJadwalSekolah(),
//                                               transitionDuration: Duration.zero,
//                                               reverseTransitionDuration:
//                                                   Duration.zero,
//                                             ),
//                                           );
//                                         },
//                                       ),
//                                       const SizedBox(
//                                         width: 8,
//                                       ),
//                                       const RoundedAlertBox()
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Positioned(
//                   right: 24,
//                   // top: bodyHeight * 0.88125,
//                   bottom: 24,
//                   child: InkWell(
//                     child: Container(
//                       height: 48,
//                       width: 48,
//                       padding: const EdgeInsets.all(8.0),
//                       decoration: BoxDecoration(
//                         gradient: const LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: <Color>[
//                             Color(0xFF9FC3F9),
//                             Color(0xFF83DBE0),
//                           ],
//                         ),
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: Image.asset(
//                         'assets/Plus.png',
//                         scale: 1,
//                       ),
//                     ),
//                     onTap: () {
//                       Navigator.pushReplacement(
//                         context,
//                         PageRouteBuilder(
//                           pageBuilder: (context, animation1, animation2) =>
//                               const BuatJadwalSekolah(),
//                           transitionDuration: Duration.zero,
//                           reverseTransitionDuration: Duration.zero,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Container(
//                   height: bodyHeight * 0.385,
//                   child: ListView.builder(
//                     padding: const EdgeInsets.only(right: 21),
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 3,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.only(
//                             left: 24.0, top: 10, bottom: 10),
//                         child: InkWell(
//                           child: aktif == show[index]
//                               ? Container(
//                                   width: bodyHeight * 0.28,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFFEDF1F7),
//                                     borderRadius: BorderRadius.circular(10),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color:
//                                             Color.fromRGBO(202, 184, 184, 0.25),
//                                         blurRadius: 3.0,
//                                         offset: Offset(0.0, 2.0),
//                                       ),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 15.0, vertical: 18.0),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Center(
//                                           child: Image.asset(
//                                             image[index],
//                                             width: bodyHeight * 0.2,
//                                           ),
//                                         ),
//                                         Text(
//                                           kelas[index],
//                                           style: GoogleFonts.rubik(
//                                               fontWeight: FontWeight.w600,
//                                               color: const Color(0xFF4D5569),
//                                               fontSize: 14),
//                                         ),
//                                         Row(
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Image.asset(
//                                                   'assets/Paper.png',
//                                                   width: 13,
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 6,
//                                                 ),
//                                                 Text(
//                                                   '3 Kelas',
//                                                   style: GoogleFonts.rubik(
//                                                       color: const Color(
//                                                           0xFF4D5569),
//                                                       fontSize: 12),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 )
//                               : Container(
//                                   width: bodyHeight * 0.28,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color:
//                                             Color.fromRGBO(202, 184, 184, 0.25),
//                                         blurRadius: 3.0,
//                                         offset: Offset(0.0, 2.0),
//                                       ),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 15.0, vertical: 18.0),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Center(
//                                           child: Image.asset(
//                                             image[index],
//                                             width: bodyHeight * 0.2,
//                                           ),
//                                         ),
//                                         Text(
//                                           kelas[index],
//                                           style: GoogleFonts.rubik(
//                                               fontWeight: FontWeight.w600,
//                                               color: const Color(0xFF4D5569),
//                                               fontSize: 14),
//                                         ),
//                                         Row(
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Image.asset(
//                                                   'assets/Paper.png',
//                                                   width: 13,
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 6,
//                                                 ),
//                                                 Text(
//                                                   '3 Kelas',
//                                                   style: GoogleFonts.rubik(
//                                                       color: const Color(
//                                                           0xFF4D5569),
//                                                       fontSize: 12),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                           onTap: () {
//                             index == 0
//                                 ? showToastKelas7()
//                                 : index == 1
//                                     ? showToastKelas8()
//                                     : showToastKelas9();
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Flexible(
//                   child: aktif == 0
//                       ? Container(
//                           width: mediaQueryWidth,
//                           color: Colors.white,
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                   'assets/Bertanya.png',
//                                   width: 150,
//                                 ),
//                                 Text(
//                                   "Pilih kelas terlebih dahulu",
//                                   style: GoogleFonts.notoSans(
//                                       color: const Color(0xFF797F8F),
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w400),
//                                 )
//                               ],
//                             ),
//                           ),
//                         )
//                       : Container(
//                           padding:
//                               EdgeInsets.only(left: 24.0, right: 24, top: 15),
//                           color: Colors.white,
//                           width: mediaQueryWidth,
//                           height: bodyHeight * 0.3025,
//                           child: ListView.separated(
//                             separatorBuilder: (context, index) => SizedBox(
//                               height: mediaQueryHeight * 0.025,
//                             ),
//                             itemCount: 3,
//                             itemBuilder: (context, index) {
//                               return Container(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 16),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(6),
//                                     color: Colors.white,
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: Color.fromARGB(
//                                               255, 237, 237, 237),
//                                           blurRadius: 6.0,
//                                           offset: Offset(0, 2)),
//                                     ]),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 10.0, right: 15.0),
//                                   child: Column(
//                                     children: [
//                                       InkWell(
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Container(
//                                               padding:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 10),
//                                               child: Text(
//                                                 "Kelas ${aktif}${subkelas[index]}",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.w600),
//                                               ),
//                                             ),
//                                             const Icon(Icons.arrow_forward_ios,
//                                                 size: 20),
//                                           ],
//                                         ),
//                                         onTap: () {
//                                           Navigator.pushReplacement(
//                                             context,
//                                             PageRouteBuilder(
//                                               pageBuilder: (context, animation1,
//                                                       animation2) =>
//                                                   JadwalKelas2(),
//                                               transitionDuration: Duration.zero,
//                                               reverseTransitionDuration:
//                                                   Duration.zero,
//                                             ),
//                                           );
//                                         },
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RoundedAlertBox extends StatefulWidget {
//   const RoundedAlertBox({Key? key}) : super(key: key);

//   @override
//   _RoundedAlertBoxState createState() => _RoundedAlertBoxState();
// }

// class _RoundedAlertBoxState extends State<RoundedAlertBox> {
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       padding: EdgeInsets.zero,
//       constraints: const BoxConstraints(),
//       icon: Image.asset(
//         'assets/Delete.png',
//         width: 16,
//       ),
//       onPressed: openAlertBox,
//     );
//   }

//   openAlertBox() {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
//             contentPadding: const EdgeInsets.only(
//                 top: 11.0, right: 12, bottom: 11, left: 12),
//             content: SizedBox(
//               width: 290,
//               height: 295,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: <Widget>[
//                       InkWell(
//                         child: Image.asset(
//                           "assets/Exit.png",
//                           width: 16,
//                         ),
//                         onTap: () {
//                           Navigator.pushReplacement(
//                             context,
//                             PageRouteBuilder(
//                               pageBuilder: (context, animation1, animation2) =>
//                                   JadwalSekolah1(),
//                               transitionDuration: Duration.zero,
//                               reverseTransitionDuration: Duration.zero,
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 16,
//                   ),
//                   Image.asset(
//                     "assets/alert-yakin.png",
//                     width: 108,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Yakin Ingin Menghapus?",
//                     style: GoogleFonts.notoSans(
//                         fontSize: 16, fontWeight: FontWeight.w600),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   SizedBox(
//                     width: 219,
//                     height: 32,
//                     child: OutlinedButton(
//                       child: const Text('Ya'),
//                       style: OutlinedButton.styleFrom(
//                         primary: const Color(0xFF9FC3F9),
//                         side: const BorderSide(
//                             color: Color(0xFF9FC3F9), width: 1),
//                       ),
//                       onPressed: () {},
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
