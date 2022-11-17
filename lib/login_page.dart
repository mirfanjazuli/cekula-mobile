import 'package:cekula/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    final flexibleHeight = 1 / 800 * bodyHeight;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: bodyHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 25 * flexibleHeight),
                        child: Image.asset(
                          "assets/logo.png",
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  // color: Colors.red,
                  height: 139,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFEDF1F7),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: GoogleFonts.notoSans(
                                color: const Color(0xFFA6AAB4)),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFEDF1F7),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: TextFormField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: GoogleFonts.notoSans(
                                    color: const Color(0xFFA6AAB4),
                                    fontSize: 16),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                        _isObscure
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Color(0xFFA6AAB4)),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Lupa password?",
                              style: GoogleFonts.notoSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8F9BB3))),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 23 * flexibleHeight,
                      bottom: 29 * flexibleHeight,
                      left: 24,
                      right: 24),
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
                Container(
                  margin: EdgeInsets.only(bottom: 30 * flexibleHeight),
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Color(0xFF8F9BB3),
                                thickness: 1,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  "Pendaftaran Murid Baru",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8F9BB3)),
                                )),
                            Expanded(
                              child: Divider(
                                color: Color(0xFF8F9BB3),
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 41,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.66),
                          // color: Colors.blue,
                        ),
                        child: Image(
                          image: AssetImage("assets/ppdb.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: mediaQueryWidth,
                  // color: Colors.red,
                  height: 175 * flexibleHeight,
                  child: Image.asset(
                    'assets/bottom.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
