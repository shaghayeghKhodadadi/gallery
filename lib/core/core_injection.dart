import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:gallery/core/injection/injection.dart';
import 'package:gallery/core/network/network_info.dart';
import 'package:http/http.dart' as http;

class CoreInjection extends Injection {
  @override
  Future<void> initDataSource() async {}

  @override
  Future<void> initPackages() async {
    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
    sl.registerLazySingleton(() => http.Client());
    sl.registerLazySingleton(() => Connectivity());
  }

  @override
  Future<void> initRepository() async {}

  @override
  Future<void> initStateManagement() async {
    
  }

  @override
  Future<void> initUseCase() async {}
}
