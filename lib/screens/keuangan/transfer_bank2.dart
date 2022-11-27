import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/keuangan/transfer_bank.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferBank2 extends StatelessWidget {
  TransferBank2({Key? key}) : super(key: key);

  final List namaBank = ["Bank BCA", "Bank Mandiri", "Bank BRI", "Bank BNI"];
  final List logoBank = [
    "assets/BCA.png",
    "assets/Mandiri.png",
    "assets/BRI.png",
    "assets/BNI.png"
  ];

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
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          TransferBank(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_back));
                      }),
                      Text(
                        "Transfer Bank",
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
                      height: bodyHeight * (0.035) - 1,
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
                      // height: bodyHeight * 0.07,
                      height: bodyHeight * 0.035,
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
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.only(
                      top: 9.18, left: 10, right: 10, bottom: 8.71),
                  width: mediaQueryWidth,
                  height: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 197, 197, 197),
                            blurRadius: 1.0,
                            offset: Offset(0, 2)),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.rubik(
                                fontSize: 10.39,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF4D5569)),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Pilih dalam  ',
                                style: GoogleFonts.rubik(
                                    fontSize: 8.66,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF4D5569)),
                                children: [
                                  TextSpan(
                                    text: '23 : 59 : 35',
                                    style: GoogleFonts.rubik(
                                        fontSize: 10.39,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFED6562)),
                                  ),
                                ]),
                          )
                        ],
                      ),
                      Text(
                        'Rp 500.000',
                        style: GoogleFonts.rubik(
                            fontSize: 12.13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4D5569)),
                      ),
                      Text(
                        '20227AGTFR',
                        style: GoogleFonts.rubik(
                            fontSize: 8.66,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4D5569)),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 24.0, right: 24, top: 0),
                    margin: EdgeInsets.only(top: 30),
                    color: Colors.white,
                    width: mediaQueryWidth,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bank BCA",
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF4D5569)),
                            ),
                            Image.asset(
                              'assets/BCA.png',
                              width: 32,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 17.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 32),
                          child: Text(
                            'Lakukan pembayaran dari rekening bank BCA ke nomor virtual account di bawah ini :',
                            style: GoogleFonts.rubik(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF4D5569)),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Nomor Virtual Account",
                          style: GoogleFonts.rubik(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4D5569)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "86758990012808399",
                              style: GoogleFonts.rubik(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4D5569)),
                            ),
                            Text(
                              "Salin",
                              style: GoogleFonts.rubik(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF8FB0E0)),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
            Positioned(
              bottom: 24,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
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
                    'Kembali',
                    style: GoogleFonts.notoSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation1, animation2) =>
                    //         JenisPembayaran(),
                    //     transitionDuration: Duration.zero,
                    //     reverseTransitionDuration: Duration.zero,
                    //   ),
                    // );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
