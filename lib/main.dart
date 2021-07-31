import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/components/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/profile_account/loginPage.dart';
import 'package:news_app/profile_account/signUpPage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      color: kbgColor,
      theme: ThemeData(
        backgroundColor: kbgColor,
      ),
      home: MyHomePage(
        title: 'News Social App',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kbgColor,
      // appBar: AppBar(
      //   actions: [],
      //   centerTitle: true,
      // ),
      body: Container(
        // color: Colors.blue[500],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/svg/Frame.svg",
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Anytime, Anywhere",
              style: GoogleFonts.dmSans(
                fontSize: 30,
                color: kallColor[600],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The Ultimate news source",
              style: GoogleFonts.dmSans(
                fontSize: 17,
                color: Color.fromRGBO(184, 191, 255, 1),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => SignUpPage(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: GoogleFonts.dmSans(
                      fontSize: 17,
                      color: kallColor[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                  color: kallColor[600],
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
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: kbgColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
