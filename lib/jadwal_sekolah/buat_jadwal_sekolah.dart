import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/drawer.dart';
import 'package:cekula/jadwal_sekolah/jadwal_sekolah1.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';

class BuatJadwalSekolah extends StatefulWidget {
  const BuatJadwalSekolah({Key? key}) : super(key: key);

  @override
  State<BuatJadwalSekolah> createState() => _BuatJadwalSekolahState();
}

class _BuatJadwalSekolahState extends State<BuatJadwalSekolah> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  final TextEditingController _hurufcontroller = TextEditingController();

  int _charHuruf = 0;

  _onChangedHuruf(String value) {
    setState(() {
      _charHuruf = value.split(" ").length;
    });
  }

  TextEditingController dateinputmulai = TextEditingController();
  TextEditingController dateinputselesai = TextEditingController();
  @override
  void initState() {
    dateinputmulai.text = "";
    dateinputselesai.text = "";
    super.initState();
  }

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
                          Container(
                            height: 142,
                            width: mediaQueryWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color(0xFFc1d4ed),
                                  Color(0xFFb5dee1),
                                ],
                              ),
                            ),
                            child: image != null
                                ? Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.file(
                                          image!,
                                          width: mediaQueryWidth,
                                          height: 142,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 6,
                                        right: 3,
                                        child: InkWell(
                                          child: Container(
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(29.6),
                                              color: const Color(0xFF69AFB3),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 7.0),
                                              child: Image.asset(
                                                "assets/Camera.png",
                                                width: 11,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            pickImage();
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                : Stack(
                                    children: <Widget>[
                                      Center(
                                        child: Image.asset(
                                          "assets/Image.png",
                                          width: 70,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 6,
                                        right: 3,
                                        child: InkWell(
                                          child: Container(
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(29.6),
                                              color: const Color(0xFF69AFB3),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 7.0),
                                              child: Image.asset(
                                                "assets/Camera.png",
                                                width: 11,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            pickImage();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          //Judul Jadwal
                          Text(
                            "Nama Lengkap",
                            style: GoogleFonts.notoSans(
                                color: Color(0xFF4D5569),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
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
                                padding: const EdgeInsets.only(bottom: 4),
                                child: TextFormField(
                                  // controller: controllerNamaLengkap,
                                  decoration: InputDecoration(
                                    // contentPadding: EdgeInsets.only(bottom: 8),
                                    hintText: 'Masukkan nama lengkap',
                                    hintStyle: GoogleFonts.notoSans(
                                      color: const Color(0xFFA6AAB4),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF4D5569)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          //Tanggal Pelaksanaan
                          Text(
                            "Tanggal Pelaksanaan",
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
                                padding: const EdgeInsets.only(bottom: 0),
                                child: TextFormField(
                                  // controller: controllerTanggalLahir,
                                  decoration: InputDecoration(
                                    hintText: 'HH/BB/TT',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Image.asset(
                                        'assets/Calendar.png',
                                        width: 24,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF4D5569)),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      print(pickedDate);
                                      String formattedDate =
                                          DateFormat('dd-MM-yy')
                                              .format(pickedDate);
                                      print(formattedDate);

                                      setState(() {
                                        // controllerTanggalLahir.text = formattedDate;
                                      });
                                    } else {
                                      print("Date is not selected");
                                    }
                                  },
                                ),
                              ))),
                          const SizedBox(
                            height: 10,
                          ),

                          //Selesai Pelaksanaan
                          Text(
                            "Selesai Pelaksanaan",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 44,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFedf1f7),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: TextFormField(
                                controller: dateinputselesai,
                                decoration: InputDecoration(
                                  hintText: 'HH/BB/TT',
                                  hintStyle: GoogleFonts.notoSans(
                                      color: const Color(0xFFA6AAB4)),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      'assets/Calendar.png',
                                      width: 24,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: GoogleFonts.notoSans(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2101));

                                  if (pickedDate != null) {
                                    print(pickedDate);
                                    String formattedDate =
                                        DateFormat('dd-MM-yy')
                                            .format(pickedDate);
                                    print(formattedDate);

                                    setState(() {
                                      dateinputselesai.text = formattedDate;
                                    });
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                              ))),
                          const SizedBox(
                            height: 10,
                          ),

                          //Deskripsi Jadwal
                          Text(
                            "Selesai Pelaksanaan",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, bottom: 10.0),
                              child: TextFormField(
                                controller:
                                    _hurufcontroller, //Tambahkan Controller
                                onChanged: _onChangedHuruf, //Tambahkan Fuction
                                // maxLength: 25, //batas char max yang bisa diinputkan
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  counterText:
                                      '$_charHuruf/25', //Untuk menampilkan hitungan

                                  hintText: 'Masukkan deskripsi jadwal',
                                ),
                                minLines: 1,
                                maxLines: 5,
                                style: GoogleFonts.notoSans(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
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
                      child: MaterialButton(
                        child: Text(
                          'Posting Jadwal',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: openAlertBox,
                      ),
                    )
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
                                              JadwalSekolah1(),
                                          transitionDuration: Duration.zero,
                                          reverseTransitionDuration:
                                              Duration.zero,
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_back));
                              }),
                              Text(
                                "Buat Jadwal Sekolah",
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
