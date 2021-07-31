import 'package:flutter/material.dart';
import 'package:news_app/components/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/mainPages/homePage.dart';

class HangOn extends StatefulWidget {
  // const HangOn({ Key? key }) : super(key: key);

  @override
  _HangOnState createState() => _HangOnState();
}

class _HangOnState extends State<HangOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kbgColor,
      body: Container(
        margin: defaultMargin,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/svg/Frame.svg",
                width: 140,
              ),
              SizedBox(
                height: 175,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => HomePage(),
                      ),
                    );
                  },
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: kallColor[600],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Hang On...",
                  style: googleStyleBig,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Something is about to happen",
                  style: googleStyleSmall,
                ),
              ),
              SizedBox(
                height: 210,
              ),
              Center(
                child: Text(
                  '''News is something somebody doesn't want printed; all
                                  else is advertising.''',
                  style: googleStyleSmall,
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
