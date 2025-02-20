import 'package:flutter/material.dart';
import 'package:gallery/app/gallery_app.dart';
import 'package:gallery/core/core_injection.dart';
import 'package:gallery/feature/gallery_injection.dart';
import 'package:gallery/theme/super_app_theme.dart';
import 'package:provider/provider.dart';

void main() async{ 
   await CoreInjection().init();
   await GalleryInjection().init();
  runApp(ChangeNotifierProvider<GalleryTheme>(
    create: (context) => GalleryTheme(),
     child: const Gallery()),
  );
}

