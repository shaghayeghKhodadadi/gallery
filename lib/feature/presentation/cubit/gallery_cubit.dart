import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gallery/core/errorHandling/resource/data_state.dart';
import 'package:gallery/core/usecase/usecase.dart';
import 'package:gallery/feature/domain/usecase/get_image_list_usecase.dart';
import 'package:gallery/feature/presentation/cubit/gallery_status.dart';

part 'gallery_state.dart';

class GalleryCubit extends Cubit<GalleryState> {
  final GetImageListUsecase galleryUsecase;
  GalleryCubit(this.galleryUsecase)
      : super(GalleryState(galleryStatus: GalleryStatusLoading()));

  void getGallery() async {
    emit(state.copyWith(gallery: GalleryStatusLoading()));

    DataState dataState = await galleryUsecase(NoParams());

    if (dataState is DataSuccess) {
      emit(state.copyWith(
          gallery: GalleryStatusDone(resultModel: dataState.data)));
    }
    if (dataState is DataFailed) {
      emit(state.copyWith(
          gallery: GalleryStatusError(message: dataState.messageErrors)));
    }
  }
}
