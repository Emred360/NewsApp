import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/components/constants.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/svg/Frame.svg",
                width: 140,
              ),
              SizedBox(
                height: 140,
              ),
              SvgPicture.asset(
                "assets/svg/Illustrationinspired.svg",
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
