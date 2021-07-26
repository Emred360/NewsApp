import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/components/constants.dart';
import 'package:news_app/homePage.dart';

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
                style: TextStyle(color: kAcctBtnColor),
                decoration: InputDecoration(
                  labelText: "USERNAME/EMAIL",
                  labelStyle: TextStyle(color: kAcctBtnColor),
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
                style: TextStyle(color: kAcctBtnColor),
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
                  labelStyle: TextStyle(color: kAcctBtnColor),
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
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: kAcctBtnColor,
                  fontSize: 13,
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
                    style: TextStyle(
                      fontSize: 17,
                      color: kbgColor,
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
                  margin: EdgeInsets.fromLTRB(60, 0, 10, 0),
                  color: Colors.white,
                  height: 1,
                  width: 70,
                ),
                Text(
                  "OR CONNECT WITH",
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 60, 0),
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
                        style: TextStyle(
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
                        style: TextStyle(
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
