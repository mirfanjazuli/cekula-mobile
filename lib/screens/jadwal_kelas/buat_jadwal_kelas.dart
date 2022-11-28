import 'package:cekula/screens/jadwal_kelas/jadwal_kelas1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cekula/screens/drawer/drawer.dart';
import 'package:cekula/screens/jadwal_kelas/jadwal_kelas2.dart';
import 'package:intl/intl.dart';

class BuatJadwalKelas extends StatefulWidget {
  const BuatJadwalKelas({Key? key}) : super(key: key);

  @override
  State<BuatJadwalKelas> createState() => _BuatJadwalKelasState();
}

class _BuatJadwalKelasState extends State<BuatJadwalKelas> {
  bool formMataPelajaran = false;
  bool formJamMulai = false;
  bool formJamSelesai = false;
  bool formGuruMapel = false;
  TextEditingController _controllerMataPelajaran = TextEditingController();
  TextEditingController _controllerGuruMapel = TextEditingController();
  TextEditingController _controllerJamMulai = TextEditingController();
  TextEditingController _controllerJamSelesai = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controllerMataPelajaran = TextEditingController();
    _controllerMataPelajaran.addListener(() {
      final formMataPelajaran = _controllerMataPelajaran.text.isNotEmpty;
      setState(() => this.formMataPelajaran = formMataPelajaran);
    });

    _controllerGuruMapel = TextEditingController();
    _controllerGuruMapel.addListener(() {
      final formGuruMapel = _controllerGuruMapel.text.isNotEmpty;
      setState(() => this.formGuruMapel = formGuruMapel);
    });

    _controllerJamMulai = TextEditingController();
    _controllerJamMulai.addListener(() {
      final formJamMulai = _controllerJamMulai.text.isNotEmpty;
      setState(() => this.formJamMulai = formJamMulai);
    });

    _controllerJamSelesai = TextEditingController();
    _controllerJamSelesai.addListener(() {
      final formJamSelesai = _controllerJamSelesai.text.isNotEmpty;
      setState(() => this.formJamSelesai = formJamSelesai);
    });

    _controllerJamMulai.text = "";
    _controllerJamSelesai.text = "";
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
                          Text(
                            "Tingkat Kelas",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 24,
                            child: RadioTingkatKelas(),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Nama Kelas",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 24,
                            child: RadioNamaKelas(),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Nama Hari",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 24,
                            child: RadioNamaHari(),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Nama Mata Pelajaran",
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
                                controller: _controllerMataPelajaran,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Masukkan nama mapel',
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

                          //Jam Pelaksanaan
                          Text(
                            "Jam Pelaksanaan",
                            style: GoogleFonts.notoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF4D5569)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 136,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFedf1f7),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    textAlign: TextAlign.center,
                                    controller: _controllerJamMulai,
                                    decoration: InputDecoration(
                                        isCollapsed: true,
                                        border: InputBorder.none,
                                        hintText: '00.00',
                                        hintStyle: TextStyle(
                                            color: const Color(0xFFA6AAB4))),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF4D5569)),
                                    readOnly: true,
                                    onTap: () async {
                                      TimeOfDay? pickedTime =
                                          await showTimePicker(
                                        initialTime: TimeOfDay.now(),
                                        context: context,
                                      );

                                      if (pickedTime != null) {
                                        print(pickedTime.format(context));
                                        DateTime parsedTime = DateFormat.jm()
                                            .parse(pickedTime
                                                .format(context)
                                                .toString());

                                        print(parsedTime);
                                        String formattedTime =
                                            DateFormat('HH:mm')
                                                .format(parsedTime);
                                        print(formattedTime);

                                        setState(() {
                                          _controllerJamMulai.text =
                                              formattedTime;
                                        });
                                      } else {
                                        print("Time is not selected");
                                      }
                                    },
                                  ))),
                              Image.asset(
                                'assets/Line.png',
                                width: 10,
                              ),
                              Container(
                                  width: 136,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFedf1f7),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: TextFormField(
                                    textAlignVertical: TextAlignVertical.center,
                                    textAlign: TextAlign.center,
                                    controller: _controllerJamSelesai,
                                    decoration: InputDecoration(
                                        isCollapsed: true,
                                        border: InputBorder.none,
                                        hintText: '00.00',
                                        hintStyle: TextStyle(
                                            color: const Color(0xFFA6AAB4))),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF4D5569)),
                                    readOnly: true,
                                    onTap: () async {
                                      TimeOfDay? pickedTime =
                                          await showTimePicker(
                                        initialTime: TimeOfDay.now(),
                                        context: context,
                                      );

                                      if (pickedTime != null) {
                                        print(pickedTime.format(context));
                                        DateTime parsedTime = DateFormat.jm()
                                            .parse(pickedTime
                                                .format(context)
                                                .toString());

                                        print(parsedTime);
                                        String formattedTime =
                                            DateFormat('HH:mm')
                                                .format(parsedTime);
                                        print(formattedTime);

                                        setState(() {
                                          _controllerJamSelesai.text =
                                              formattedTime;
                                        });
                                      } else {
                                        print("Time is not selected");
                                      }
                                    },
                                  ))),
                            ],
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Nama Guru Mata Pelajaran",
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
                                  controller: _controllerGuruMapel,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Masukkan guru mapel',
                                      hintStyle: GoogleFonts.notoSans(
                                          color: const Color(0xFFA6AAB4))),
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
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
                        gradient: formMataPelajaran &&
                                formJamMulai &&
                                formJamSelesai &&
                                formGuruMapel
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
                          'Buat Jadwal',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: formMataPelajaran &&
                                formJamMulai &&
                                formJamSelesai &&
                                formGuruMapel
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
                                "Buat Jadwal Kelas",
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
                            "Jadwal Kelas Berhasil Dibuat",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Silahkan kembali ke\nhalaman jadwal kelas",
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

//Radio Tingkat Kelas
class RadioTingkatKelas extends StatefulWidget {
  const RadioTingkatKelas({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioTingkatKelasState();
  }
}

class CustomRadioTingkatKelasState extends State<RadioTingkatKelas> {
  List<RadioModelTingkatKelas> sampleData = <RadioModelTingkatKelas>[];

  @override
  void initState() {
    // ignore: todo
    super.initState();
    sampleData.add(RadioModelTingkatKelas(false, '7'));
    sampleData.add(RadioModelTingkatKelas(false, '8'));
    sampleData.add(RadioModelTingkatKelas(false, '9'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                for (var element in sampleData) {
                  element.isSelected = false;
                }
                sampleData[index].isSelected = true;
              });
            },
            child: RadioItemTingkatKelas(sampleData[index]),
          );
        },
      ),
    );
  }
}

class RadioItemTingkatKelas extends StatelessWidget {
  final RadioModelTingkatKelas _item;
  RadioItemTingkatKelas(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 24.0,
            width: 60.0,
            child: Center(
              child: Text("Kelas ${_item.buttonText}",
                  style: GoogleFonts.notoSans(
                      color:
                          _item.isSelected ? Colors.white : Color(0xFF9FC3F9),
                      //fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
            ),
            decoration: BoxDecoration(
              color: _item.isSelected ? Color(0xFF9FC3F9) : Colors.transparent,
              border: Border.all(width: 1.0, color: Color(0xFF9FC3F9)),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModelTingkatKelas {
  bool isSelected;
  final String buttonText;

  RadioModelTingkatKelas(
    this.isSelected,
    this.buttonText,
  );
}

// Radio Nama Kelas
class RadioNamaKelas extends StatefulWidget {
  const RadioNamaKelas({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioNamaKelasState();
  }
}

class CustomRadioNamaKelasState extends State<RadioNamaKelas> {
  List<RadioModelNamaKelas> sampleData = <RadioModelNamaKelas>[];

  @override
  void initState() {
    // ignore: todo
    super.initState();
    sampleData.add(RadioModelNamaKelas(false, 'A'));
    sampleData.add(RadioModelNamaKelas(false, 'B'));
    sampleData.add(RadioModelNamaKelas(false, 'C'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                for (var element in sampleData) {
                  element.isSelected = false;
                }
                sampleData[index].isSelected = true;
              });
            },
            child: RadioItemNamaKelas(sampleData[index]),
          );
        },
      ),
    );
  }
}

class RadioItemNamaKelas extends StatelessWidget {
  final RadioModelNamaKelas _item;
  RadioItemNamaKelas(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 24.0,
            width: 60.0,
            child: Center(
              child: Text("Kelas ${_item.buttonText}",
                  style: GoogleFonts.notoSans(
                      color:
                          _item.isSelected ? Colors.white : Color(0xFF9FC3F9),
                      //fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
            ),
            decoration: BoxDecoration(
              color: _item.isSelected ? Color(0xFF9FC3F9) : Colors.transparent,
              border: Border.all(width: 1.0, color: Color(0xFF9FC3F9)),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModelNamaKelas {
  bool isSelected;
  final String buttonText;

  RadioModelNamaKelas(
    this.isSelected,
    this.buttonText,
  );
}

// Radio Nama Hari
class RadioNamaHari extends StatefulWidget {
  const RadioNamaHari({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioNamaHariState();
  }
}

class CustomRadioNamaHariState extends State<RadioNamaHari> {
  List<RadioModelNamaHari> sampleData = <RadioModelNamaHari>[];

  @override
  void initState() {
    // ignore: todo
    super.initState();
    sampleData.add(RadioModelNamaHari(false, 'Senin'));
    sampleData.add(RadioModelNamaHari(false, 'Selasa'));
    sampleData.add(RadioModelNamaHari(false, 'Rabu'));
    sampleData.add(RadioModelNamaHari(false, 'Kamis'));
    sampleData.add(RadioModelNamaHari(false, 'Jumat'));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: mediaQueryWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[0].isSelected = true;
                });
              },
              child: RadioItemNamaHari(sampleData[0]),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[1].isSelected = true;
                });
              },
              child: RadioItemNamaHari(sampleData[1]),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[2].isSelected = true;
                });
              },
              child: RadioItemNamaHari(sampleData[2]),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[3].isSelected = true;
                });
              },
              child: RadioItemNamaHari(sampleData[3]),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  for (var element in sampleData) {
                    element.isSelected = false;
                  }
                  sampleData[4].isSelected = true;
                });
              },
              child: RadioItemNamaHari(sampleData[4]),
            ),
          ],
        ),
      ),
    );
  }
}

class RadioItemNamaHari extends StatelessWidget {
  final RadioModelNamaHari _item;
  RadioItemNamaHari(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 24.0,
            width: 54.4,
            child: Center(
              child: Text("${_item.buttonText}",
                  style: GoogleFonts.notoSans(
                      color:
                          _item.isSelected ? Colors.white : Color(0xFF9FC3F9),
                      //fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
            ),
            decoration: BoxDecoration(
              color: _item.isSelected ? Color(0xFF9FC3F9) : Colors.transparent,
              border: Border.all(width: 1.0, color: Color(0xFF9FC3F9)),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class RadioModelNamaHari {
  bool isSelected;
  final String buttonText;

  RadioModelNamaHari(
    this.isSelected,
    this.buttonText,
  );
}
