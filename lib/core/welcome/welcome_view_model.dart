import 'package:get/get.dart';

class WelcomeViewModel {
  RxString connectionState = "Conexión".obs;
  RxString versionNumber = "x.x.x".obs;

  WelcomeViewModel();
}
