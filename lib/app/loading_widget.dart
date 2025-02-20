
import 'package:flutter/material.dart';
import 'package:gallery/theme/app_colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidget extends StatelessWidget {
  final double? size;
  const LoadingWidget({Key? key,this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RepaintBoundary(
        child: LoadingAnimationWidget.discreteCircle(
          secondRingColor:AppColors.priBGdark ,
          thirdRingColor:AppColors.whiteColor ,
            color: AppColors.whiteColor, size:size?? 40),
      ),
    );
  }
}
