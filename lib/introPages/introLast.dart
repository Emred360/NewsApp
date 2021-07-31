import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/components/constants.dart';
import 'package:news_app/introPages/introFirst.dart';

class IntroLast extends StatefulWidget {
  // const IntroLast({ Key? key }) : super(key: key);

  @override
  _IntroLastState createState() => _IntroLastState();
}

class _IntroLastState extends State<IntroLast> {
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
                  "assets/svg/Illustrationinspired.svg",
                  width: 225,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Easily Get Inspired",
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
                  '''Ullamcorper eget nulla facilisi etiam
    dignissim diam quis. Aliquet nec
                ullamcorper sit amet.''',
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
                    width: 20,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kallColor[600],
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroFirst(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    child: Row(
                      children: [
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
                          width: 10,
                        ),
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
