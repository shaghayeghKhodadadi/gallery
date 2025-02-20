
import 'package:gallery/core/errorHandling/resource/data_state.dart';
import 'package:gallery/feature/data/model/image_model.dart';

abstract class GalleryRepository {
  Future<DataState<ImageListModel>> imageList();
}