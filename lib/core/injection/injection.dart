

import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

abstract class Injection {
  Future<void> init() async {
    await initPackages();
    await initDataSource();
    await initRepository();
    await initUseCase();
    await initStateManagement();
  }

  Future<void> initPackages();

  Future<void> initDataSource();

  Future<void> initRepository();

  Future<void> initUseCase();

  Future<void> initStateManagement();
}
