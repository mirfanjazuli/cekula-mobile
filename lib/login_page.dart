import 'package:cekula/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final flexibleHeight = 1 / 800 * bodyHeight / 2;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 100,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: flexibleHeight * 35.73,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFEDF1F7),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username',
                    hintStyle:
                        GoogleFonts.notoSans(color: const Color(0xFFA6AAB4)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: flexibleHeight * 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFEDF1F7),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Kata Sandi',
                      hintStyle:
                          GoogleFonts.notoSans(color: const Color(0xFFA6AAB4)),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: flexibleHeight * 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Lupa password?",
                    style: GoogleFonts.notoSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF202A44))),
              ],
            ),
            SizedBox(
              height: flexibleHeight * 33,
            ),
            Container(
              width: 312,
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
                  'Masuk',
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
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
            SizedBox(
              height: flexibleHeight * 39,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Pendaftaran Murid Baru")),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: flexibleHeight * 10,
            ),
            Container(
              width: 41,
              height: 41,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(4.66)),
              child: Image(
                image: AssetImage("assets/ppdb.png"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: flexibleHeight * 33,
            ),
            Container(
              width: mediaQueryWidth,
              color: Colors.white,
              child: Image.asset(
                'assets/bottom.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
