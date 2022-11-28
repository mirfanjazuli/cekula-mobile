import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class EditKartuPelajar extends StatefulWidget {
  const EditKartuPelajar({Key? key}) : super(key: key);

  @override
  State<EditKartuPelajar> createState() => _EditKartuPelajarState();
}

class _EditKartuPelajarState extends State<EditKartuPelajar> {
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

  bool formNamaLengkap = false;
  bool formNoIdentitas = false;
  bool formTempatLahir = false;
  bool formTanggalLahir = false;
  bool formAlamat = false;

  TextEditingController _controllerNamaLengkap = TextEditingController();
  TextEditingController _controllerNoIdentitas = TextEditingController();
  TextEditingController _controllerTempatLahir = TextEditingController();
  TextEditingController _controllerTanggalLahir = TextEditingController();
  TextEditingController _controllerAlamat = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerNamaLengkap = TextEditingController();
    _controllerNamaLengkap.addListener(() {
      final formNamaLengkap = _controllerNamaLengkap.text.isNotEmpty;
      setState(() => this.formNamaLengkap = formNamaLengkap);
    });

    _controllerNoIdentitas = TextEditingController();
    _controllerNoIdentitas.addListener(() {
      final formNoIdentitas = _controllerNoIdentitas.text.isNotEmpty;
      setState(() => this.formNoIdentitas = formNoIdentitas);
    });

    _controllerTempatLahir = TextEditingController();
    _controllerTempatLahir.addListener(() {
      final formTempatLahir = _controllerTempatLahir.text.isNotEmpty;
      setState(() => this.formTempatLahir = formTempatLahir);
    });

    _controllerTanggalLahir = TextEditingController();
    _controllerTanggalLahir.addListener(() {
      final formTanggalLahir = _controllerTanggalLahir.text.isNotEmpty;
      setState(() => this.formTanggalLahir = formTanggalLahir);
    });

    _controllerAlamat = TextEditingController();
    _controllerAlamat.addListener(() {
      final formAlamat = _controllerAlamat.text.isNotEmpty;
      setState(() => this.formAlamat = formAlamat);
    });
    _controllerNamaLengkap.text = "Augusta Satrianto";
    _controllerNoIdentitas.text = "20051214007";
    _controllerTempatLahir.text = "Kediri";
    _controllerTanggalLahir.text = "15/09/02";
    _controllerAlamat.text = "Madiun";
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
                      height:
                          bodyHeight * (1 - 0.10625) - 87 - paddingHeight + 24,
                      color: Colors.white,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFEDF1F7),
                                          shape: BoxShape.circle,
                                          image: image != null
                                              ? DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: FileImage(image!))
                                              : DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'assets/Profil.png')))),
                                  Positioned(
                                    right: 0,
                                    // top: bodyHeight * 0.88125,
                                    bottom: 0,
                                    child: InkWell(
                                      child: Image.asset(
                                        'assets/Edit.png',
                                        width: 24,
                                        color: const Color(0xFF9FC3F9),
                                      ),
                                      onTap: () {
                                        pickImage();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nama Lengkap",
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
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 4),
                              child: TextFormField(
                                controller: _controllerNamaLengkap,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Masukkan nama lengkap',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4))),
                                style: GoogleFonts.notoSans(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "No. Identitas Siswa",
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
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 4),
                                child: TextFormField(
                                  controller: _controllerNoIdentitas,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          'Masukkan nomor identitas siswa',
                                      hintStyle: GoogleFonts.notoSans(
                                          color: const Color(0xFFA6AAB4))),
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
                            "Tempat Lahir",
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
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 4),
                                child: TextFormField(
                                  controller: _controllerTempatLahir,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Masukkan tempat lahir',
                                      hintStyle: GoogleFonts.notoSans(
                                          color: const Color(0xFFA6AAB4))),
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
                            "Tanggal Lahir",
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
                                padding: const EdgeInsets.only(bottom: 4),
                                child: TextFormField(
                                  controller: _controllerTanggalLahir,
                                  decoration: InputDecoration(
                                    hintText: 'HH/BB/TT',
                                    hintStyle: GoogleFonts.notoSans(
                                        color: const Color(0xFFA6AAB4)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 4, top: 8),
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
                                        _controllerTanggalLahir.text =
                                            formattedDate;
                                      });
                                    } else {
                                      print("Date is not selected");
                                    }
                                  },
                                ),
                              ))),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Alamat",
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
                            decoration: BoxDecoration(
                                color: const Color(0xFFedf1f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 4),
                                child: TextFormField(
                                  controller: _controllerAlamat,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Masukkan alamat',
                                      hintStyle: GoogleFonts.notoSans(
                                          color: const Color(0xFFA6AAB4))),
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 24),
                      width: mediaQueryWidth,
                      height: 39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: formNamaLengkap &&
                                formNoIdentitas &&
                                formTempatLahir &&
                                formTanggalLahir &&
                                formAlamat
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
                        onPressed: formNamaLengkap &&
                                formNoIdentitas &&
                                formTempatLahir &&
                                formTanggalLahir &&
                                formAlamat
                            ? openAlertBox
                            : null,
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
                                      Navigator.of(context).pop(context);
                                    },
                                    icon: const Icon(Icons.arrow_back));
                              }),
                              Text(
                                "Edit Kartu Pelajar Digital",
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
                            "Kartu Pelajar Berhasil Diubah",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Silahkan kembali ke\nhalaman kartu pelajar anda",
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
