import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/components/constants.dart';
import 'package:news_app/introPages/introLast.dart';

class IntroFirst extends StatefulWidget {
  // const IntroFirst({ Key? key }) : super(key: key);

  @override
  _IntroFirstState createState() => _IntroFirstState();
}

class _IntroFirstState extends State<IntroFirst> {
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
              SvgPicture.asset(
                "assets/svg/Frame.svg",
                width: 140,
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/svg/Illustration@2x_like_share_comment.svg",
                  width: 250,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Like, Share, Comment",
                  style: GoogleFonts.dmSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: kallColor[600],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  '''Lorem ipsum dolor sit amet, consectetur
    adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua.''',
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: kallColor[600],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 10,
                          ),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: kallColor[400],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: kallColor[400],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: kallColor[400],
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: kallColor[600],
                            size: 30,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IntroLast(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
