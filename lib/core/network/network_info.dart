import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<bool> get onConnectivityChanged;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectionChecker;
  bool _lastConnectivityStatus = false;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected async {
   List <ConnectivityResult> result = await connectionChecker.checkConnectivity();
    return _convertResultToBool(result[0]);
  }

  @override
  Stream<bool> get onConnectivityChanged async* {
    yield await isConnected; // Yield the initial connectivity state
    await for (final result in connectionChecker.onConnectivityChanged) {
      final isConnected = _convertResultToBool(result[0]);
      if (isConnected != _lastConnectivityStatus) {
        _lastConnectivityStatus = isConnected;
        yield isConnected;
      }
    }
  }

  bool _convertResultToBool(ConnectivityResult result) {
    return result != ConnectivityResult.none;
  }
}
