import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/config/themes/theme_light.dart';
import 'package:jobits_pos_client_sales/main_controller.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: theme_light.lightTheme,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final main_controller c = Get.put(main_controller());
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
        title: Text(
          "POS Dpte",
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
                  'POS Dpte',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text("Iniciar sesión"),
                  onPressed: () => Get.to(
                    Other(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            right: 10,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Hello world'),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 10,
            child: Text(
              'Version Number',
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              'Hurtado singao',
            ),
          ),
        ],
      ),
    );
  }
}

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
