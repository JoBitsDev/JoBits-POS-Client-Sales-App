import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/welcome/welcome_controller.dart';

class WelcomeUI extends GetView<WelcomeController> {
  WelcomeUI() {
    Get.put(WelcomeController()); //TODO: mover de capa
  }

  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
        title: Text(
          'app_name'.tr,
        ),
      ),

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'app_name'.tr,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text('login'.tr),
                  onPressed: () => controller.onIniciarSesionClick(),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            right: 10,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('enable_notifications'.tr),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 10,
            child: Obx(() => Text(controller.model.versionNumber.value)),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Obx(() => Text(controller.model.connectionState.value)),
          ),
        ],
      ),
    );
  }
}