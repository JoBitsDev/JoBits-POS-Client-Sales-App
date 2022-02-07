import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';
import 'package:jobits_pos_client_sales/core/location/app/repo/location_repo.dart';
import 'package:jobits_pos_client_sales/core/location/app/use_case/location_use_case.dart';

class LocationUseCaseImpl implements LocationUseCase {
  LocationRepo repo = Get.find();

  @override
  LocationModel choose_location(LocationModel model) {
    return repo.choose_location(model);
  }

  @override
  LocationModel edit_location(LocationModel model) {
    return repo.edit_location(model);
  }

  @override
  List<LocationModel> load_locations() {
    return repo.load_locations();
  }

  @override
  LocationModel resolve_choosed_location() {
    return repo.resolve_choosed_location();
  }

  @override
  List<LocationModel> save_locations(List<LocationModel> locations) {
    return repo.save_locations(locations);
  }
}
