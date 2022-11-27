import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/jadwal_sekolah/jadwal_sekolah1.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class EditJadwalSekolah extends StatefulWidget {
  const EditJadwalSekolah({Key? key}) : super(key: key);

  @override
  State<EditJadwalSekolah> createState() => _EditJadwalSekolahState();
}

class _EditJadwalSekolahState extends State<EditJadwalSekolah> {
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

  bool formJudulJadwal = false;
  bool formTanggalMulai = false;
  bool formTanggalSelesai = false;
  bool formDeskripsiJadwal = false;

  TextEditingController _controllerJudulJadwal = TextEditingController();
  TextEditingController _controllerTanggalMulai = TextEditingController();
  TextEditingController _controllerTanggalSelesai = TextEditingController();
  TextEditingController _controllerDeskripsiJadwal = TextEditingController();

  int _charHuruf = 0;

  _onChangedHuruf(String value) {
    setState(() {
      _charHuruf = value.split(" ").length;
    });
  }

  @override
  void initState() {
    super.initState();
    _controllerJudulJadwal = TextEditingController();
    _controllerJudulJadwal.addListener(() {
      final formJudulJadwal = _controllerJudulJadwal.text.isNotEmpty;
      setState(() => this.formJudulJadwal = formJudulJadwal);
    });

    _controllerTanggalMulai = TextEditingController();
    _controllerTanggalMulai.addListener(() {
      final formTanggalMulai = _controllerTanggalMulai.text.isNotEmpty;
      setState(() => this.formTanggalMulai = formTanggalMulai);
    });

    _controllerTanggalSelesai = TextEditingController();
    _controllerTanggalSelesai.addListener(() {
      final formTanggalSelesai = _controllerTanggalSelesai.text.isNotEmpty;
      setState(() => this.formTanggalSelesai = formTanggalSelesai);
    });

    _controllerDeskripsiJadwal = TextEditingController();
    _controllerDeskripsiJadwal.addListener(() {
      final formDeskripsiJadwal = _controllerDeskripsiJadwal.text.isNotEmpty;
      setState(() => this.formDeskripsiJadwal = formDeskripsiJadwal);
    });

    _controllerJudulJadwal.text = "Kegiatan Tengah Semester";
    _controllerTanggalMulai.text = "15/09/22";
    _controllerTanggalSelesai.text = "18/09/22";

    _controllerDeskripsiJadwal.text =
        'KTS (Kegiatan Tengah Semester) adalah kegiatan rutin setiap tahun di semester ganjil dan genap. KTS ini merupakan salah satu agenda sekolah dan bagian dari pembelajaran.';

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
                                          "assets/jadwal-sekolah.png",
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
                          const SizedBox(
                            height: 18,
                          ),
                          //Judul Jadwal
                          Text(
                            "Judul Jadwal",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            // height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  controller: _controllerJudulJadwal,
                                  onChanged:
                                      _onChangedHuruf, //Tambahkan Fuction
                                  maxLength: 80,
                                  minLines: 1,
                                  maxLines: 2,
                                  decoration: InputDecoration(
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
                                padding: const EdgeInsets.only(bottom: 8),
                                child: TextFormField(
                                  controller: _controllerTanggalMulai,
                                  decoration: InputDecoration(
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(top: 8),
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
                                          DateFormat('dd/MM/yy')
                                              .format(pickedDate);
                                      print(formattedDate);

                                      setState(() {
                                        _controllerTanggalMulai.text =
                                            formattedDate;
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
                              height: 40,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFedf1f7),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: TextFormField(
                                  controller: _controllerTanggalSelesai,
                                  decoration: InputDecoration(
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(top: 8),
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
                                          DateFormat('dd/MM/yy')
                                              .format(pickedDate);
                                      print(formattedDate);

                                      setState(() {
                                        _controllerTanggalSelesai.text =
                                            formattedDate;
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

                          //Deskripsi Jadwal
                          Text(
                            "Deskripsi Jadwal",
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
                                controller: _controllerDeskripsiJadwal,
                                onChanged: _onChangedHuruf,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '$_charHuruf/25',
                                ),
                                maxLength: 25,
                                minLines: 1,
                                maxLines: 5,
                                style: GoogleFonts.notoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF4D5569)),
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
                        gradient: formJudulJadwal &&
                                formTanggalMulai &&
                                formTanggalSelesai &&
                                formDeskripsiJadwal
                            ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF9FC3F9), Color(0xFF83DBE0)],
                              )
                            : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFFD2D4DA), Color(0xFFD2D4DA)],
                              ),
                      ),
                      child: MaterialButton(
                        child: Text(
                          'Simpan Perubahan',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: formJudulJadwal &&
                                formTanggalMulai &&
                                formTanggalSelesai &&
                                formDeskripsiJadwal
                            ? openAlertBox
                            : null,
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
                                "Edit Jadwal Sekolah",
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
            contentPadding: const EdgeInsets.all(0),
            content: Container(
              width: 290,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFBFBFB),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                            height: 44,
                          ),
                          Image.asset(
                            "assets/alert-jadwal.png",
                            height: 143,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Jadwal Anda Berhasil Diubah",
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
                              color: Color(0xFF797F8F),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 53,
                          ),
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
