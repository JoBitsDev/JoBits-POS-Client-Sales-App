import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/auth/ui/login_controller.dart';

class LoginUI extends GetView<LoginController> {
  LoginUI() {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('auth_button'.tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  controller: controller.textUser,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  controller: controller.textPass,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () => controller.onAutenticarClick(),
                child: Text('auth_button'.tr),
              )
            ],
          ),
        ),
      ),
    );
  }
}
