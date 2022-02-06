import 'dart:math';

import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/welcome/welcome_view_model.dart';

class WelcomeController extends GetxController {
  WelcomeViewModel model = WelcomeViewModel();

  WelcomeController() {
    model.connectionState.value = 'Un chino';
    model.versionNumber.value = "1.1.1";
  }

  onIniciarSesionClick() {
    model.connectionState.value = "${Random().nextInt(10000)}";
   // print(model.connectionState.value);
  }
}
