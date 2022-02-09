import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/config/themes/theme_light.dart';
import 'package:jobits_pos_client_sales/constants/app_constants.dart';
import 'package:jobits_pos_client_sales/constants/internationalization/spanish.dart';
import 'package:jobits_pos_client_sales/core/location/module/location_module.dart';
import 'package:jobits_pos_client_sales/core/welcome/welcome_ui.dart';
import 'package:jobits_pos_client_sales/utils/helpers/persistence_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  initDataBase();
  initModules();
  runApp(GetMaterialApp(
    translations: Spanish(),
    locale: Locale('es', 'ES'),
    debugShowCheckedModeBanner: false,
    home: WelcomeUI(),
    theme: theme_light.lightTheme,
  ));
}

void initModules() async {
  LocationCoreModule.init();
}

void initDataBase() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConstants.objectBox = await ObjectBox.create();
  AppConstants.sharedPreferences = await SharedPreferences.getInstance();
}
