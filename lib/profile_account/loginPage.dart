import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/components/constants.dart';
import 'package:news_app/mainPages/homePage.dart';
import 'package:news_app/profile_account/forgotPassword.dart';

class LogInPage extends StatefulWidget {
  // const LogInPage({ Key? key }) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kbgColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/svg/Frame.svg",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .7,
              child: TextField(
                cursorColor: kAcctBtnColor,
                style: GoogleFonts.dmSans(color: kAcctBtnColor),
                decoration: InputDecoration(
                  labelText: "USERNAME/EMAIL",
                  labelStyle: GoogleFonts.dmSans(color: kAcctBtnColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(
                      color: kAcctBtnColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .7,
              child: TextField(
                cursorColor: kAcctBtnColor,
                style: GoogleFonts.dmSans(color: kAcctBtnColor),
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: kAcctBtnColor,
                    ),
                  ),
                  labelText: "PASSWORD",
                  labelStyle: GoogleFonts.dmSans(color: kAcctBtnColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(
                      color: kAcctBtnColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                140,
                18,
                0,
                10,
              ),
              child: GestureDetector(
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.dmSans(
                    color: kAcctBtnColor,
                    fontSize: 13,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => ForgotPassword(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => HomePage(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                height: 40,
                decoration: BoxDecoration(
                  color: kAcctBtnColor,
                  borderRadius: BorderRadius.circular(40),
                  // border: Border.all(
                  //   width: 3.0,
                  //   color: Colors.white,
                  // ),
                ),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.dmSans(
                      fontSize: 17,
                      color: kbgColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(55, 0, 10, 0),
                  color: Colors.white,
                  height: 1,
                  width: 70,
                ),
                Text(
                  "OR CONNECT WITH",
                  style: GoogleFonts.dmSans(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 55, 0),
                  color: Colors.white,
                  height: 1,
                  width: 70,
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => LogInPage(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                height: 40,
                decoration: BoxDecoration(
                  color: kallColor[100],
                  borderRadius: BorderRadius.circular(40),
                  // border: Border.all(
                  //   width: 3.0,
                  //   color: Colors.white,
                  // ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    // Icon(Icons.face),
                    SvgPicture.asset("assets/svg/googlee.svg"),
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Text(
                        "Google",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => LogInPage(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                height: 40,
                decoration: BoxDecoration(
                  color: kallColor[200],
                  borderRadius: BorderRadius.circular(40),
                  // border: Border.all(
                  //   width: 3.0,
                  //   color: Colors.white,
                  // ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    SvgPicture.asset("assets/svg/faceboook.svg"),
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Text(
                        "Facebook",
                        style: GoogleFonts.dmSans(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
