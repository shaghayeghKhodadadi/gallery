import 'package:flutter/material.dart';
import 'package:gallery/feature/data/model/image_model.dart';
import 'package:gallery/feature/presentation/pages/gallery_screen.dart';
import 'package:gallery/feature/presentation/pages/image_detail_screen.dart';

class AppRouts {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final image = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => GalleryScreen());

      case '/imageDetail':
        if (settings.arguments is Map<String, dynamic>) {
          final args = settings.arguments as Map<String, dynamic>;
          final images = args['images'] as List<ImageModel>?;
          final index = args['index'] as int?;
          return MaterialPageRoute(
              builder: (_) => ImageDetailScreen(
                    images: images,
                    index: index,
                  ));
        }

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Page Not Found'),
            ),
            body: const Center(
              child: Text('404: Page not found'),
            ),
          ),
        );
    }
  }
}
