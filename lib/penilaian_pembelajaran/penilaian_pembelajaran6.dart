import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/penilaian_pembelajaran/penilaian_pembelajaran4.dart';

class PenilaianPembelajaran6 extends StatelessWidget {
  const PenilaianPembelajaran6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 20,
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF91ceec),
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
      drawer: const DrawerView(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: bodyHeight * 0.10625,
              child: AppBar(
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
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          const PenilaianPembelajaran4(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_back));
                      }),
                      Text(
                        "Penilaian Pembelajaran",
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
            Column(
              children: [
                SizedBox(
                  height: bodyHeight * 0.10625 - 1,
                ),
                Stack(
                  children: [
                    Container(
                      width: mediaQueryWidth,
                      height: bodyHeight * (0.035),
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
                      width: mediaQueryWidth,
                      height: bodyHeight * 0.04,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  width: mediaQueryWidth,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Kelas 9A",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF4D5569)),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/mapel-indonesia.png',
                                      width: 24,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Bahasa Indonesia",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Guru Mata Pelajaran",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF4D5569)),
                                ),
                                Text(
                                  "Hilda Nathaniela",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    height: 700,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ahmad Jourji Zaidan",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFedf1f7),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, bottom: 2),
                                  child: TextFormField(
                                    initialValue: "90",
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // hintText: '1',
                                    ),
                                    style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
