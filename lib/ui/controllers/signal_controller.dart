import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

//Clase controladora de las senal
class SignalController extends GetxController {
  final _signal = "".obs;

//Getter
  String get signal => _signal.value;

  //Futuro para verificar senal
  void checkSignalType() async {
    try {
      var connectivityResult = await Connectivity().checkConnectivity();
      switch (connectivityResult) {
        case ConnectivityResult.wifi:
          _signal.value = "WiFi";
          break;
        case ConnectivityResult.mobile:
          _signal.value = "Mobile";
          break;
        default:
          _signal.value = "No Signal";
          break;
      }
    } catch (e) {
      _signal.value = "Error";
    }
  }
}
