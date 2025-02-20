import 'package:equatable/equatable.dart';
import 'package:gallery/feature/data/model/image_model.dart';

abstract class GalleryStatus extends Equatable {}

class GalleryStatusLoading extends GalleryStatus {
  @override
  List<Object?> get props => [];
}

class GalleryStatusDone extends GalleryStatus {
  final ImageListModel? resultModel;
  GalleryStatusDone({this.resultModel});

  @override
  List<Object?> get props => [resultModel];
}

class GalleryStatusError extends GalleryStatus {
  final String? message;

  GalleryStatusError({this.message});

  @override
  List<Object?> get props => [message];
}
