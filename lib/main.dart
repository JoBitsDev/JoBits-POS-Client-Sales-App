import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/config/themes/theme_light.dart';
import 'package:jobits_pos_client_sales/constants/internationalization/spanish.dart';
import 'package:jobits_pos_client_sales/core/welcome/welcome_ui.dart';
import 'package:jobits_pos_client_sales/main_controller.dart';

void main() => runApp(GetMaterialApp(
      translations: Spanish(),
      locale: Locale('es', 'ES'),
      debugShowCheckedModeBanner: false,
      home: WelcomeUI(),
      theme: theme_light.lightTheme,
    ));

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final main_controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}
