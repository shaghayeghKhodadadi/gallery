import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/app/responsive/font_responsive.dart';

import 'app_colors.dart';

class GalleryTheme with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  bool get isDark => _themeMode == ThemeMode.dark;

  ThemeMode get currentTheme => _themeMode;
  static double defaultPadding(BuildContext context) =>
      ScreenUtil().setWidth(15);
  static double defaultPaddingInside(BuildContext context) =>
      ScreenUtil().setWidth(12);
  static double defaultPaddingVertical(BuildContext context) =>
      ScreenUtil().setWidth(20);

  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  void getTheme() {
    return notifyListeners();
  }

  static double _resolveFontSize(double fontSize) {
    return FontResponsive().fontSizeResolver(fontSize);
  }

  // static final double _resolveFontSize =
  //     (WidgetsBinding.instance.window.physicalSize.width /
  //             WidgetsBinding.instance.window.devicePixelRatio) *
  //         .72;
  static var theme;
  static TextTheme textLightTheme() {
    return TextTheme(
      //*** fontsize 28
      displayLarge: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.07),
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w500),
      // **** fontsize 24
      displayMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.064),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w500),

      // **** fontsize 22
      displaySmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.06),
          // ScreenUtil().setSp(21),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w500),

// **** fontsize 20

      headlineMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.07),
          // ScreenUtil().setSp(17),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w500),

//font size header
      headlineSmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0468),
          // ScreenUtil().setSp(16),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w400),

// **** fontsize 18
//kavatel
      titleLarge: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0644),
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w500),

      // ****fontsize16
      // first .0445 increase 2 size
      //kavatel
      titleMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0588),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w600),

      titleSmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0448),
          // ScreenUtil().setSp(16),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w600),

      // **** fontsize 14
      // first .043
      //kavatel
      bodyLarge: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0463),
          // ScreenUtil().setSp(12),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w600),

      // ****fontsize 13
      // first .0441
      //kavatel
      bodyMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.048),
          // ScreenUtil().setSp(11),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w600),

// ****fontsize 12
//kavatel
      bodySmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.041),
          // ScreenUtil().setSp(10),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w500),

      //kavatel
      // ****fontsize 10
      labelSmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.039),
          // ScreenUtil().setSp(10),
          color: AppColors.priBGdark,
          fontWeight: FontWeight.w500),
    );
  }

  static TextTheme textDarkTheme() {
    return TextTheme(
      displayLarge: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.07),
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w500),
      // **** fontsize 24
      displayMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.064),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500),

      // **** fontsize 22
      displaySmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.06),
          // ScreenUtil().setSp(21),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500),

// **** fontsize 20

      headlineMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.055),
          // ScreenUtil().setSp(17),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500),

      //font size header
      headlineSmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0468),
          // ScreenUtil().setSp(16),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400),

// **** fontsize 18
      titleLarge: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0448),
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.w500),
      // ****fontsize16
      titleMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0445),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400),

      titleSmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0448),
          // ScreenUtil().setSp(16),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500),

      // **** fontsize 14
      bodyLarge: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.043),
          // ScreenUtil().setSp(12),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400),

      // ****fontsize 12
      bodyMedium: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.0441),
          // ScreenUtil().setSp(11),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400),

// ****fontsize 11
      bodySmall: TextStyle(
          fontFamily: "IranSanse",
          fontSize: _resolveFontSize(.044),
          // ScreenUtil().setSp(10),
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500),
    );
  }

  static get lightTheme => ThemeData(
        primarySwatch: Colors.blue,
        // splashColor: Colors.transparent,
        highlightColor: AppColors.splashColor, // Color when pressed
        hoverColor: AppColors.splashColor,
        cardColor: AppColors.grey200,
        // enable border color
        dialogBackgroundColor: AppColors.border,

        // for icon app bazaro
        badgeTheme: const BadgeThemeData(backgroundColor: AppColors.black),
        // button chart dashboard
        //superApp
        scaffoldBackgroundColor: AppColors.whiteColor,
        // date Icon
        dropdownMenuTheme: const DropdownMenuThemeData(
            inputDecorationTheme: InputDecorationTheme(
                fillColor: AppColors.priBGlight,
                iconColor: AppColors.fillColor)),
        indicatorColor: AppColors.black300,
        disabledColor: AppColors.fillColor.withOpacity(.12),

        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
        // background drawer and text company name
        drawerTheme: const DrawerThemeData(
          backgroundColor: AppColors.white200,
        ),
        unselectedWidgetColor: AppColors.black,
        bannerTheme: const MaterialBannerThemeData(
          backgroundColor: Colors.black12,
        ),
        cardTheme: const CardTheme(color: AppColors.blue900),
        // pri10 to dark

        secondaryHeaderColor: AppColors.secondaryColor,
        // hint message

        focusColor: AppColors.green,
        colorScheme: const ColorScheme(
          // CTO next invoice tab
          surfaceTint: AppColors.pridarklight,
          //superApp
          primary: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          secondaryContainer: AppColors.sec00,
          //superApp
          onPrimary: AppColors.onPrimaryColor,
          // impact,fluctuate dashboard
          inversePrimary: AppColors.grayColor,
          inverseSurface: AppColors.black500,

          // CTO style text next invoice tab
          scrim: AppColors.blue400,

          // icon expansion tile
          onSecondary: AppColors.fillColor,
          error: AppColors.errorColor,
          onError: AppColors.errorColor,
          surface: AppColors.whiteColor,
          tertiary: AppColors.pridarklighter,
          primaryContainer: AppColors.pri00,
          // none drop down
          outlineVariant: AppColors.none,

          outline: AppColors.grey20,
          // 152D50
          //date Picker
          onSurface: AppColors.fillColor,
          onInverseSurface: AppColors.whiteColor,
          brightness: Brightness.light,
        ),
        hintColor: AppColors.grey10,
        primaryColorDark: AppColors.pridarklight,
        tabBarTheme: TabBarTheme(
          labelColor: AppColors.pri40,
          // indicator: const BoxDecoration(
          //     backgroundBlendMode: BlendMode.srcOver,
          //     color: AppColors.pri00,
          //     border: Border(
          //         bottom: BorderSide(
          //             color: AppColors.pri40,
          //             style: BorderStyle.solid,
          //             width: 2.8))),
          unselectedLabelColor: AppColors.deActiveLabel,
          // labelStyle: TextStyle(
          //     fontSize: _resolveFontSize(.0465),
          //     // ScreenUtil().setSp(12),
          //     color: AppColors.pri40,
          //     fontWeight: FontWeight.bold),
          // unselectedLabelStyle: TextStyle(
          //     fontSize: _resolveFontSize(.0465),
          //     // ScreenUtil().setSp(12),
          //     color: AppColors.deActiveLabel,
          //     fontWeight: FontWeight.w500
          //     )
        ),
        // button white
        canvasColor: AppColors.white100,

        // backgroundColor: AppColors.whiteColor,
        //pry40
        primaryColor: AppColors.pri40,
        primaryColorLight: AppColors.pri10,
        primaryIconTheme: const IconThemeData(color: AppColors.pry20),
        // ignore: deprecated_member_use
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.blue800,
        ),
        iconTheme: IconThemeData(
            color: AppColors.priBGdark, size: ScreenUtil().setWidth(22)),
        snackBarTheme: SnackBarThemeData(
            backgroundColor: AppColors.pry90,
            // contentTextStyle: TextStyle(
            //     fontSize: _resolveFontSize(.044),
            //     color: AppColors.white300,
            //     fontWeight: FontWeight.w400),
            actionTextColor: AppColors.pry20),
        // divider expansion tile
        dividerColor: Colors.transparent,
        // dialogTheme: DialogTheme(
        //   titleTextStyle: TextStyle(
        //       fontSize: _resolveFontSize(.064),
        //       // ScreenUtil().setSp(22),
        //       color: AppColors.black,
        //       fontWeight: FontWeight.w400),
        //   contentTextStyle: TextStyle(
        //       fontSize: _resolveFontSize(.042),
        //       // ScreenUtil().setSp(12),
        //       color: AppColors.black200,
        //       fontWeight: FontWeight.w400),
        //   backgroundColor: AppColors.priBGlight,
        // ),

        // canvasColor: AppColors.black200,
        // backgroundColor: AppColors.white,
        // // dividerColor: AppColors.grey,
        // hintColor: AppColors.black200,
        // dialogBackgroundColor: AppColors.black200,
        // disabledColor: AppColors.black200,
        // errorColor: AppColors.black200,
        // focusColor: AppColors.black200,
        // shadowColor: AppColors.black200,
        // scaffoldBackgroundColor: AppColors.white,
        textTheme: textLightTheme(),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.secondaryColor,
          disabledColor: AppColors.secondaryColor,
        ),

        appBarTheme: AppBarTheme(
            shadowColor: Colors.black45,
            color: AppColors.white200,
            // elevation: 0,
            // centerTitle: true,
            iconTheme: const IconThemeData(color: AppColors.pry90, size: 20),
            // toolbarTextStyle: TextStyle(
            //     fontSize: _resolveFontSize(.056),
            //     color: AppColors.pry90,
            //     fontWeight: FontWeight.w500),
            actionsIconTheme: const IconThemeData(color: AppColors.whiteColor)),
      );
  // *****************************************   darkTheme
  static get darkTheme => ThemeData(
        //tab bar invoice page
        cardColor: AppColors.unSelectTab,
        // enable border color
        dialogBackgroundColor: AppColors.backColor,
        // button chart dashboard
        // scaffoldBackgroundColor: AppColors.blue400,
        scaffoldBackgroundColor: AppColors.pry90,
        // for icon app bazaro
        badgeTheme: const BadgeThemeData(backgroundColor: AppColors.whiteColor),
        // language
        dropdownMenuTheme: const DropdownMenuThemeData(
            inputDecorationTheme: InputDecorationTheme(
                fillColor: AppColors.pri00Dark,
                iconColor: AppColors.whiteColor)),
        // app colors.black 300 in light
        indicatorColor: AppColors.backColor,

        // flutter switch
        disabledColor: AppColors.pri00Dark,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
        // secondary color
        secondaryHeaderColor: AppColors.pri10,
        primaryColorDark: AppColors.pridarklight,
        //pry20 comment invoice
        primaryIconTheme: const IconThemeData(color: AppColors.pri40),
        cardTheme: const CardTheme(color: AppColors.backColor),
        highlightColor: AppColors.backColor,

        tabBarTheme: TabBarTheme(
          labelColor: AppColors.pri40,
          // indicator: const BoxDecoration(
          //     backgroundBlendMode: BlendMode.srcOver,
          //     color: AppColors.pri00Dark,
          //     border: Border(
          //         bottom: BorderSide(
          //             color: AppColors.pry20,
          //             style: BorderStyle.solid,
          //             width: 2.8))),
          unselectedLabelColor: AppColors.deActiveLabelDark,
          // labelStyle: TextStyle(
          //     fontSize: _resolveFontSize(.0455),
          //     //  ScreenUtil().setSp(12),
          //     color: AppColors.pry20,
          //     fontWeight: FontWeight.bold),
          // unselectedLabelStyle: TextStyle(
          //     fontSize: _resolveFontSize(.0445),
          //     color: AppColors.deActiveLabelDark,
          //     fontWeight: FontWeight.w500)
        ),
        // secondary color
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.whiteColor,
          disabledColor: AppColors.secondaryColor,
        ),
        // pry 10
        primaryColorLight: AppColors.pry20,

        iconTheme: IconThemeData(
            color: AppColors.whiteColor, size: ScreenUtil().setWidth(22)),
        focusColor: AppColors.truthDark,
        hintColor: AppColors.whiteColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.blue800,
        ),

        // background drawer and text company name
        drawerTheme: const DrawerThemeData(
          backgroundColor: AppColors.pry90,
        ),
        unselectedWidgetColor: Colors.black,
        bannerTheme: MaterialBannerThemeData(
          backgroundColor: AppColors.whiteColor.withOpacity(.2),
        ),
        colorScheme: const ColorScheme(
          // CTO next invoice tab
          surfaceTint: AppColors.pridark,
          // CTO style text next invoice tab
          scrim: AppColors.purple100,
          inversePrimary: AppColors.whiteColor,
          inverseSurface: AppColors.whiteColor,
          // none drop down
          outlineVariant: AppColors.backColor,

          //pry40
          primary: AppColors.pry20,
          // pridarklighter
          tertiary: AppColors.pri00Dark,
          // sec00
          secondaryContainer: AppColors.secondaryColor,
          // secondaryColor
          secondary: AppColors.pri00,
          background: AppColors.pry90,
          onPrimary: AppColors.whiteColor,
          primaryContainer: AppColors.pri00Dark,

          // fill color
          onSecondary: AppColors.whiteColor,
          error: AppColors.errorColorDark,
          onError: AppColors.errorColorDark,

          // backColor
          onBackground: AppColors.pri00Dark,
          surface: AppColors.backColor,
          // font datepicker
          onSurface: AppColors.whiteColor,
          // white color
          onInverseSurface: AppColors.blue400,
          brightness: Brightness.light,
          //grey20
          outline: AppColors.backColor,
        ),
        primaryColor: AppColors.pry20,
        // backgroundColor: AppColors.pry90,
        // white100
        canvasColor: AppColors.blue400,
        snackBarTheme: SnackBarThemeData(
            backgroundColor: AppColors.whiteColor,
            // contentTextStyle: TextStyle(
            //     fontSize: _resolveFontSize(.044),
            //     color: AppColors.priBGdark,
            //     fontWeight: FontWeight.w400),
            actionTextColor: AppColors.pry20),

        // secondary color
        // ignore: deprecated_member_use
        dialogTheme: DialogTheme(
          // titleTextStyle: TextStyle(
          //     fontSize: _resolveFontSize(.064),
          //     //  ScreenUtil().setSp(22),
          //     color: AppColors.whiteColor,
          //     fontWeight: FontWeight.w400),
          // contentTextStyle: TextStyle(
          //     fontSize: _resolveFontSize(.042),
          //     // ScreenUtil().setSp(12),
          //     color: AppColors.backColor,
          //     fontWeight: FontWeight.w400),
          backgroundColor: AppColors.secondaryColor,
        ),
        // canvasColor: AppColors.black200,
        // backgroundColor: AppColors.white,
        // // dividerColor: AppColors.grey,
        // hintColor: AppColors.black200,
        // dialogBackgroundColor: AppColors.black200,
        // disabledColor: AppColors.black200,
        // errorColor: AppColors.black200,
        // focusColor: AppColors.black200,
        // shadowColor: AppColors.black200,
        // scaffoldBackgroundColor: AppColors.white,
        textTheme: textDarkTheme(),

        appBarTheme: AppBarTheme(
            color: AppColors.pry90,

            // elevation: 0,
            // centerTitle: true,
            iconTheme:
                const IconThemeData(color: AppColors.whiteColor, size: 20),
            // toolbarTextStyle: TextStyle(
            //     fontSize: _resolveFontSize(.056),
            //     // ScreenUtil().setSp(15),
            //     color: AppColors.whiteColor,
            //     fontWeight: FontWeight.w500),
            actionsIconTheme: const IconThemeData(color: AppColors.whiteColor)),
      );
}
