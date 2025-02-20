
import 'package:gallery/core/injection/injection.dart';
import 'package:gallery/feature/data/datasource/gallery_remote_datasource.dart';
import 'package:gallery/feature/data/repository/gallery_repository_imple.dart';
import 'package:gallery/feature/domain/repository/gallery_repository.dart';
import 'package:gallery/feature/domain/usecase/get_image_list_usecase.dart';

class GalleryInjection extends Injection {
  @override
  Future<void> initDataSource() async {
    sl.registerLazySingleton<GalleryRemoteDataSource>(
      () => GalleryRemoteDataSource(),
    );
  }

  @override
  Future<void> initPackages() async {}

  @override
  Future<void> initRepository() async {
    sl.registerLazySingleton<GalleryRepository>(
      () => GalleryRepositoryImple(sl(), sl()),
    );
  }

  @override
  Future<void> initStateManagement() async {}

  @override
  Future<void> initUseCase() async {
    sl.registerLazySingleton<GetImageListUsecase>(
      () => GetImageListUsecase(sl()),
    );
    
    
  }
}
