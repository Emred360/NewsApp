import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kbgColor = Color.fromRGBO(0, 12, 123, 1);
Color kAcctBtnColor = Color.fromRGBO(184, 191, 255, 1);

Map<int, Color> kallColor = {
  50: Color.fromRGBO(0, 12, 123, 0),
  100: Color.fromRGBO(255, 79, 79, 1), //red
  200: Color.fromRGBO(77, 94, 255, 1), //blue
  300: Color.fromRGBO(255, 255, 255, 5), //white
  400: Color.fromRGBO(77, 94, 255, 1), //FaB bg_btn ada
  500: Color.fromRGBO(24, 37, 154, 1), //Most popular Container
  600: Color.fromRGBO(184, 191, 255, 1), //Fab Add Icon
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor kdefaultColor = MaterialColor(50, kallColor);
TextStyle kbodyTextStyle = TextStyle(
  color: Colors.white,
);
TextStyle googleStyleBig = GoogleFonts.dmSans(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: kallColor[600],
);
TextStyle googleStyleMed = GoogleFonts.dmSans(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: kallColor[600],
);
TextStyle googleStyleSmall = GoogleFonts.dmSans(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: kallColor[600],
);
TextStyle googleStyleSmallest = GoogleFonts.dmSans(
  fontSize: 9,
  fontWeight: FontWeight.w400,
  color: kallColor[600],
);

class Categories {
  String categoriesImage;
  String categoriesText;
  Categories(
    this.categoriesImage,
    this.categoriesText,
  );
}

List<Categories> categories = [
  Categories(
    "assets/svg/Vector_categories-1.svg",
    "Politics",
  ),
  Categories(
    "assets/svg/Vector_categories-2.svg",
    "Intl.",
  ),
  Categories(
    "assets/svg/Vector_categories-3.svg",
    "Edu.",
  ),
  Categories(
    "assets/svg/Vector_categories-4.svg",
    "Env.",
  ),
  Categories(
    "assets/svg/Vector_categories-5.svg",
    "Health",
  ),
];

class Trending {
  String trendingImage;
  String trendingHeader;
  String trendingDate;
  int trendingFavoriteValue;
  int trendingCommentValue;
  Trending(
    this.trendingImage,
    this.trendingHeader,
    this.trendingDate,
    this.trendingFavoriteValue,
    this.trendingCommentValue,
  );
}

List<Trending> trending = [
  Trending(
    "assets/img/Rectangle@2x_Programming.png",
    '''Best Programming
Language in 2021''',
    "22 Jun 2021",
    2781,
    368,
  ),
  Trending(
    "assets/img/Rectangle@3x_Covid.png",
    '''Dirty Facts About
Covid-19 Revealed''',
    "21 Jun 2021",
    3773,
    1054,
  ),
  Trending(
    "assets/img/Rectangle@2x_JobHunting.png",
    '''Tips for Job Hunting
in the App Industry''',
    "19 Jun 2021",
    5970,
    749,
  ),
];
EdgeInsetsGeometry defaultMargin = EdgeInsets.all(
  20,
);
