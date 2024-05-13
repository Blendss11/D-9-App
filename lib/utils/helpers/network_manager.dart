import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> connectivitySubscription;
  final Rx<ConnectivityResult> connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    connectionStatus.value = result.single;
    if (connectionStatus.value == ConnectivityResult.none) {
      Loaders.warningSnackBar(title: 'No internet');
    }
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }
}
