import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/location/app/use_case/impl/location_use_case_impl.dart';
import 'package:jobits_pos_client_sales/core/location/repo/impl/location_repo_impl.dart';

class LocationCoreModule {
  static Future init() async {
    await Get.put(LocationRepoImpl()); //TODO: separar modulo
    Get.put(LocationUseCaseImpl());
  }

  static void dispose() {}
}
