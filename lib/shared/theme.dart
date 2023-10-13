part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = const Color(0xff503E9D);
Color blackColor = const Color(0xff000000);
Color whiteColor = const Color(0xffFFFFFF);
Color accentColor1 = const Color(0xffFBD460);
Color accentColor2 = const Color(0xFFADADAD);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: blackColor, fontWeight: FontWeight.w500);
TextStyle whiteTextFont = GoogleFonts.raleway()
    .copyWith(color: whiteColor, fontWeight: FontWeight.w500);
TextStyle purpleTextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle yellowTextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor1, fontWeight: FontWeight.w400);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor2, fontWeight: FontWeight.w500);
