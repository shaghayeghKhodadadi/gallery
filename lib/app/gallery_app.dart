import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/app/responsive/font_responsive.dart';
import 'package:gallery/app_rout.dart';
import 'package:gallery/theme/super_app_theme.dart';
import 'package:provider/provider.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<GalleryTheme>(context);
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      // designSize: const Size(360, 690),
      builder: (context, child) {
        FontResponsive().init(context);
        return MaterialApp(
          title: 'Gallery',
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          onGenerateRoute: AppRouts.generateRoute,
          theme: GalleryTheme.lightTheme,
          darkTheme: GalleryTheme.darkTheme,
          themeMode: themeProvider.currentTheme,
          // home: const Scaffold( // Replace this with a basic page.
          //   body: Center(child: Text('Hello World')),
          // ),
        );
      },
    );
  }
}
