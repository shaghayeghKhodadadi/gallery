import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/app/cache_manager.dart';
import 'package:gallery/app/loading_widget.dart';
import 'package:gallery/core/injection/injection.dart';
import 'package:gallery/feature/presentation/cubit/gallery_cubit.dart';
import 'package:gallery/feature/presentation/cubit/gallery_status.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int columns = 3;
  final int minColumns = 1;
  final int maxColumns = 5;
  double lastScale = 1.0;
  bool hasScaled = false;
  void _onScaleStart(ScaleStartDetails details) {
    hasScaled = false;
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    if (hasScaled) return;

    double scale = details.scale;

    if (scale > 1.1 && columns > minColumns) {
      setState(() {
        columns--;
      });
      hasScaled = true;
    } else if (scale < 0.9 && columns < maxColumns) {
      setState(() {
        columns++;
      });
      hasScaled = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GalleryCubit(sl())..getGallery(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: ScreenUtil().setWidth(60)),
          child: BlocBuilder<GalleryCubit, GalleryState>(
            builder: (context, state) {
              if (state.galleryStatus is GalleryStatusLoading) {
                return const LoadingWidget();
              }
              if (state.galleryStatus is GalleryStatusDone) {
                final images = (state.galleryStatus as GalleryStatusDone)
                        .resultModel
                        ?.images ??
                    [];

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onScaleStart: _onScaleStart,
                        onScaleUpdate: _onScaleUpdate,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          key: ValueKey<int>(columns),
                          padding: const EdgeInsets.all(8),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: columns,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            final imageUrl = images[index].downloadUrl;
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/imageDetail',
                                    arguments: {
                                      'images': images,
                                      'index': index,
                                    });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  cacheManager: CustomCacheManager(),
                                  imageUrl: imageUrl!,
                                  fit: BoxFit.cover,
                                  fadeInDuration:
                                      const Duration(milliseconds: 100),
                                  fadeOutDuration:
                                      const Duration(milliseconds: 100),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
