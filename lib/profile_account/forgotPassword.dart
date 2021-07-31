import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/components/constants.dart';
import 'package:news_app/mainPages/hangOn.dart';

class ForgotPassword extends StatefulWidget {
  // const ForgotPassword({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kbgColor,
      body: Container(
        margin: EdgeInsets.all(
          20,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: kallColor[600],
                  ),
                  Text(
                    '''Password Reset''',
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kallColor[600],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "Such a scatterbrain...",
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: kallColor[600],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '''Don’t panic... This often occured. Enter your email
address below and press the “send” button gently so
we can send you the password reset link''',
                style: googleStyleSmall,
              ),
              SizedBox(
                height: 36,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .85,
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
                height: 27,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => HangOn(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * .85,
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
                      "SEND",
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
                height: 90,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/svg/Group@2x_pwr_illustration.svg",
                  width: 259.34,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
