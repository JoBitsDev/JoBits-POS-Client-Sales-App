import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/auth/ui/login_view_model.dart';

class LoginController extends GetxController {
  LoginViewModel model = LoginViewModel();

  late TextEditingController textUser;
  late TextEditingController textPass;

  LoginController() {
    textUser = TextEditingController(text: '${model.usuario.value}');
    textPass = TextEditingController(text: '${model.usuario.value}');
  }

  onAutenticarClick() {
    //print(model.password.value);
  }
}
