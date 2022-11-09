import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/data_guru/buat_data_guru.dart';
import 'package:cekula/data_guru/edit_data_guru.dart';
import 'package:cekula/data_pegawai/data_pegawai1.dart';
import 'package:cekula/drawer.dart';

class DataGuru1 extends StatelessWidget {
  const DataGuru1({Key? key}) : super(key: key);

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
                    "Data Pegawai",
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
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: bodyHeight * 0.0875 - 23 + 60,
                            ),
                            height: bodyHeight * (1 - 0.10625 - 0.0875) + 50,
                            width: mediaQueryWidth,
                            color: Colors.white,
                            child: ListView(children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 24, right: 24, bottom: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 237, 237, 237),
                                          blurRadius: 6.0,
                                          offset: Offset(0, 3)),
                                    ]),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/Profil.png'),
                                          radius: 24,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Amanda Manopo",
                                              style: GoogleFonts.notoSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xFF4D5569)),
                                            ),
                                            Text("NIP.20223456",
                                                style: GoogleFonts.notoSans(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(
                                                        0xFF797F8F)))
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 21,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Tata Usaha",
                                            style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    const Color(0xFFA9C9FA))),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              child: Image.asset(
                                                'assets/Edit.png',
                                                width: 20,
                                              ),
                                              onTap: () {
                                                Navigator.pushReplacement(
                                                  context,
                                                  PageRouteBuilder(
                                                    pageBuilder: (context,
                                                            animation1,
                                                            animation2) =>
                                                        const EditDataGuru(),
                                                    transitionDuration:
                                                        Duration.zero,
                                                    reverseTransitionDuration:
                                                        Duration.zero,
                                                  ),
                                                );
                                              },
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const RoundedAlertBox()
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 172,
                              )
                            ]),
                          ),
                        ],
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
                      height: bodyHeight * 0.0875 + 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        "Data Pegawai",
                                        style:
                                            GoogleFonts.notoSans(fontSize: 14),
                                      ),
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation1,
                                                    animation2) =>
                                                const DataPegawai1(),
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
                                      width: mediaQueryWidth * 0.4,
                                      decoration: const BoxDecoration(
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
                                      child: Text("Data Guru",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                      onTap: () {
                                        // Navigator.pushReplacement(
                                        //   context,
                                        //   // PageRouteBuilder(
                                        //   //   pageBuilder: (context, animation1,
                                        //   //           animation2) =>
                                        //   //       JadwalKelas1(),
                                        //   //   transitionDuration: Duration.zero,
                                        //   //   reverseTransitionDuration:
                                        //   //       Duration.zero,
                                        //   // ),
                                        // );
                                      },
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      height: 3,
                                      width: mediaQueryWidth * 0.4,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: <Color>[
                                            Color(0xFF9FC3F9),
                                            Color(0xFF83DBE0),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            //Seacrh
                            // Container(
                            //   margin: EdgeInsets.symmetric(vertical: 20),
                            //   height: 40,
                            //   width: 312,
                            //   decoration: BoxDecoration(
                            //       color: const Color(0xFFEDF1F7),
                            //       borderRadius: BorderRadius.circular(10)),
                            // ),
                            // TextField(
                            //   // controller: searchController,
                            //   decoration: InputDecoration(
                            //     hintText: 'Cari nama murid',
                            //     contentPadding: EdgeInsets.fromLTRB(
                            //         20.0, 15.0, 20.0, 15.0),
                            //   ),
                            // ),
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 20),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDF1F7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: TextField(
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                        hintText: "Cari nama pegawai",
                                        hintStyle: GoogleFonts.notoSans(
                                            color: const Color(0xFFD2D4DA),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/Search.png',
                                    width: 20,
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
          Positioned(
            right: 24,
            // top: bodyHeight * 0.88125,
            bottom: 24,
            child: InkWell(
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
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const BuatDataGuru(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
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
        width: 20,
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
                                  const DataGuru1(),
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
                        // backgroundColor: Colors.teal,
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
