part of 'gallery_cubit.dart';

class GalleryState extends Equatable {
  final GalleryStatus galleryStatus;

  const GalleryState({required this.galleryStatus});

  GalleryState copyWith({
    GalleryStatus? gallery,
  }) {
    return GalleryState(
      galleryStatus: gallery ?? this.galleryStatus,
    );
  }

  @override
  List<Object?> get props => [galleryStatus];
}
