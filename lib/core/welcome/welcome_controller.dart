import 'dart:math';

import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/auth/ui/login_ui.dart';
import 'package:jobits_pos_client_sales/core/welcome/welcome_view_model.dart';

class WelcomeController extends GetxController {
  WelcomeViewModel model = WelcomeViewModel();

  WelcomeController() {}

  onIniciarSesionClick() {
    model.connectionState.value = "Conexión: ${Random().nextInt(10000)}";
    Get.to(LoginUI());
  }

  onEnableNotificationClick() {
    model.versionNumber.value = "Versión: ${Random().nextInt(10000)}";
  }
}
