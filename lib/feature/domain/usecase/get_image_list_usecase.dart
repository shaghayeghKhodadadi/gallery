import 'package:gallery/core/errorHandling/resource/data_state.dart';
import 'package:gallery/core/usecase/usecase.dart';
import 'package:gallery/feature/data/model/image_model.dart';
import 'package:gallery/feature/domain/repository/gallery_repository.dart';

class GetImageListUsecase extends UseCase<DataState<ImageListModel>, NoParams> {
  final GalleryRepository repository;

  GetImageListUsecase(this.repository);
  @override
  Future<DataState<ImageListModel>> call(NoParams params) async {
    return await repository.imageList();
  }
}
