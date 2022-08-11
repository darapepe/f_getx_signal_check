import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Clase controladora de las senal
class SignalController extends GetxController {
  final _signal = "".obs;
  final _icon = Icons.access_time_outlined.obs;

//Getter
  String get signal => _signal.value;
  IconData get icon => _icon.value;

  //Futuro para verificar senal
  void checkSignalType() async {
    try {
      var connectivityResult = await Connectivity().checkConnectivity();
      switch (connectivityResult) {
        case ConnectivityResult.wifi:
          _signal.value = "WiFi";
          _icon.value = Icons.network_wifi;
          break;
        case ConnectivityResult.mobile:
          _signal.value = "Mobile";
          _icon.value = Icons.network_cell;
          break;
        default:
          _signal.value = "No Signal";
          _icon.value = Icons.signal_cellular_null;
          break;
      }
    } catch (e) {
      _signal.value = "Error";
      _icon.value = Icons.access_time_outlined;
    }
  }
}
