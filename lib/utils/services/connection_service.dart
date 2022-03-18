import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectionService extends GetxService {
  ConnectionService();

  final _connectivity = Connectivity();
  final RxBool hasConnection = false.obs;
  late StreamSubscription<ConnectivityResult> _subscription;

  static Future<ConnectionService> init() async {
    final ConnectionService service = ConnectionService();

    //subscribe to connection change
    service._subscription = service._connectivity.onConnectivityChanged
        .listen(service._onConnectionChange);

    return service;
  }

  void _onConnectionChange(ConnectivityResult resul) {
    //Check if connected
    _checkConnection();
  }

  Future<void> _checkConnection() async {
    final bool oldConnectionStatus = hasConnection.value;
    bool newConnectionStatus;

    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        newConnectionStatus = true;
      } else {
        newConnectionStatus = false;
      }
    } on SocketException {
      newConnectionStatus = false;
    }

    if (oldConnectionStatus != newConnectionStatus) {
      hasConnection(newConnectionStatus);
    }
  }

  @override
  void onClose() {
    _subscription.cancel();

    super.onClose();
  }
}
