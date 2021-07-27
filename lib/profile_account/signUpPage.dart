import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/components/constants.dart';
import 'package:news_app/introPages/like_share_comment.dart';
import 'package:news_app/profile_account/loginPage.dart';

class SignUpPage extends StatefulWidget {
  // const SignUpPage({ Key? key }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  labelText: "USERNAME",
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
                decoration: InputDecoration(
                  labelText: "EMAIL",
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
                  labelText: "REPEAT PASSWORD",
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
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => IntroFirst(),
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
                    "SIGN UP",
                    style: GoogleFonts.dmSans(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kbgColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            GestureDetector(
              child: Text(
                "Already have an account?",
                style: GoogleFonts.dmSans(
                  color: kAcctBtnColor,
                  fontSize: 13,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ));
              },
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
