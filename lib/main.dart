import 'package:f_getx_signal_check/ui/controllers/signal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/app.dart';

void main() {
  Get.lazyPut<SignalController>(() => SignalController());
  runApp(const MyApp());
}
