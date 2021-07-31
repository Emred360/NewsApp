import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/components/constants.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kbgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kbgColor,
        centerTitle: true,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(
            "assets/img/Ellipse 6profilePic.png",
            fit: BoxFit.cover,
          ),
          radius: 10,
        ),
        title: Text(
          "Home",
          style: googleStyleBig,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: SvgPicture.asset(
              "assets/svg/Vector@3x_VerticalSettings.svg",
              color: kallColor[600],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kallColor[400],
        child: Icon(
          Icons.add_rounded,
          color: kallColor[600],
          size: 40,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: kallColor[500],
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/svg/Group@2x_person.svg",
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: defaultMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: googleStyleSmall,
                ),
                Text(
                  "See more",
                  style: googleStyleSmall,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //------------------------- Categories ----------------------//
            Container(
              height: 75,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // itemCount: 5,
                itemCount: categories.length,
                itemBuilder: (
                  BuildContext ctxt,
                  int index,
                ) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0,
                          0,
                          15,
                          0,
                        ),
                        // padding: EdgeInsets.only(top: 10),
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kallColor[500],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            categories[index].categoriesImage,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(categories[index].categoriesText,
                          style: googleStyleSmall),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //------------------------- Trending ----------------------//
            Text(
              "Trending",
              style: googleStyleSmall,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // itemCount: 5,
                itemCount: trending.length,
                itemBuilder: (
                  BuildContext ctxt,
                  int index,
                ) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(
                      0,
                      0,
                      15,
                      0,
                    ),
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                      color: kallColor[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          trending[index].trendingImage,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 10.0,
                            left: 10.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                trending[index].trendingDate,
                                style: googleStyleSmallest,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                trending[index].trendingHeader,
                                style: googleStyleMed,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: 15,
                                    color: kallColor[600],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    trending[index]
                                        .trendingFavoriteValue
                                        .toString(),
                                    style: googleStyleSmall,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.comment_bank_outlined,
                                    size: 15,
                                    color: kallColor[600],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    trending[index]
                                        .trendingCommentValue
                                        .toString(),
                                    style: googleStyleSmall,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 15,
                                    color: kallColor[600],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
