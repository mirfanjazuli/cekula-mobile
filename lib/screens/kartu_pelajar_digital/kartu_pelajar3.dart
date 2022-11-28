import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/kartu_pelajar_digital/edit_kartu_pelajar.dart';
import 'package:cekula/screens/kartu_pelajar_digital/kartu_pelajar2.dart';

class KartuPelajar3 extends StatefulWidget {
  KartuPelajar3({Key? key, required this.nama}) : super(key: key);
  String nama;

  @override
  State<KartuPelajar3> createState() => _KartuPelajar3State();
}

class _KartuPelajar3State extends State<KartuPelajar3> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final flexsibelCard = mediaQueryWidth * 100 / 36000;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              height: bodyHeight * 0.1062,
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
                              Navigator.of(context).pop(context);
                            },
                            icon: const Icon(Icons.arrow_back));
                      }),
                      Text(
                        "Kartu Pelajar Digital",
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
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  width: flexsibelCard * 312,
                  height: flexsibelCard * 190,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bg-kartu-pelajar.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: flexsibelCard * 36.4,
                        left: flexsibelCard * 42.27,
                        right: flexsibelCard * 42.27),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  const AssetImage('assets/Profil.png'),
                              radius: flexsibelCard * 24.7,
                            ),
                            Flexible(
                              child: SizedBox(
                                width: flexsibelCard * 312,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          // color: Colors.orange,
                                          width: flexsibelCard * 178,
                                          child: Text(
                                            '${widget.nama}',
                                            style: GoogleFonts.notoSans(
                                                fontSize: flexsibelCard * 14.09,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFf4D5569)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Text("Murid SMPN 1 Cekula",
                                            style: GoogleFonts.notoSans(
                                                fontSize: flexsibelCard * 11.74,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xFf4D5569)))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: flexsibelCard * 16.28,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NIS",
                                    style: GoogleFonts.rubik(
                                        fontSize: flexsibelCard * 6.89,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFf4D5569))),
                                SizedBox(
                                  height: flexsibelCard * 6.9,
                                ),
                                Text("Tempat dan Tanggal Lahir",
                                    style: GoogleFonts.rubik(
                                        fontSize: flexsibelCard * 6.89,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFf4D5569))),
                                SizedBox(
                                  height: flexsibelCard * 6.9,
                                ),
                                Text("Alamat",
                                    style: GoogleFonts.rubik(
                                        fontSize: flexsibelCard * 6.89,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFf4D5569)))
                              ],
                            ),
                            SizedBox(
                              width: flexsibelCard * 6.9,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(":",
                                    style: GoogleFonts.notoSans(
                                        fontSize: flexsibelCard * 6.9,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFf4D5569))),
                                SizedBox(
                                  height: flexsibelCard * 6.9,
                                ),
                                Text(":",
                                    style: GoogleFonts.notoSans(
                                        fontSize: flexsibelCard * 6.9,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFf4D5569))),
                                SizedBox(
                                  height: flexsibelCard * 6.9,
                                ),
                                Text(":",
                                    style: GoogleFonts.notoSans(
                                        fontSize: flexsibelCard * 6.9,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFf4D5569)))
                              ],
                            ),
                            SizedBox(
                              width: flexsibelCard * 5.59,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("202234578",
                                    style: GoogleFonts.notoSans(
                                        fontSize: flexsibelCard * 6.9,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFf4D5569))),
                                SizedBox(
                                  height: flexsibelCard * 6.9,
                                ),
                                Text("Kediri, 15 Agustus 2004",
                                    style: GoogleFonts.notoSans(
                                        fontSize: flexsibelCard * 6.9,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFf4D5569))),
                                const SizedBox(
                                  height: 6.9,
                                ),
                                Text("Ds Bangkok, Kec. Gurah, Kab. Kediri",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 6.9,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFf4D5569)))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(3),
                        constraints: const BoxConstraints(),
                        icon: Image.asset(
                          'assets/Edit.png',
                          width: 24,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const EditKartuPelajar(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        padding: EdgeInsets.all(3),
                        constraints: const BoxConstraints(),
                        icon: Image.asset(
                          'assets/Delete.png',
                          width: 24,
                        ),
                        onPressed: openAlertBox,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
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
            contentPadding: const EdgeInsets.all(0),
            content: SizedBox(
              width: 290,
              height: 320,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                          icon: Icon(Icons.clear_rounded)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 48,
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
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
