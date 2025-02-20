

import 'package:gallery/core/errorHandling/app_exception.dart';
import 'package:gallery/core/errorHandling/check_exception.dart';
import 'package:gallery/core/errorHandling/resource/data_state.dart';
import 'package:gallery/core/network/network_info.dart';
import 'package:gallery/feature/data/datasource/gallery_remote_datasource.dart';
import 'package:gallery/feature/data/model/image_model.dart';
import 'package:gallery/feature/domain/repository/gallery_repository.dart';

class GalleryRepositoryImple extends GalleryRepository  {
  final NetworkInfo networkInfo;
  final GalleryRemoteDataSource dataSource;

  GalleryRepositoryImple(this.networkInfo, this.dataSource);

  @override
  Future<DataState<ImageListModel>> imageList() async{
   if (await networkInfo.isConnected) {
      try {
        var result = await dataSource.imageList();

        return DataSuccess(result);
      } on AppException catch (e) {
        return CheckException.response(e.response);
      }
    } else {
      return const DataFailed("لطفا اتصال اینترنت خود را بررسی کنید");
    }
  }
  
  
  }