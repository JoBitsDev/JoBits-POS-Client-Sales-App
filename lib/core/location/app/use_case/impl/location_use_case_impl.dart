import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';
import 'package:jobits_pos_client_sales/core/location/app/repo/location_repo.dart';
import 'package:jobits_pos_client_sales/core/location/app/use_case/location_use_case.dart';

class LocationUseCaseImpl implements LocationUseCase {
  LocationRepo repo = Get.find();

  @override
  LocationModel chooseLocation(int locationId) {
    return repo.chooseLocation(locationId);
  }

  @override
  LocationModel createLocation(LocationModel newLocation) {
    return repo.createLocation(newLocation);
  }

  @override
  LocationModel deleteLocation(int locationId) {
    return repo.deleteLocation(locationId);
  }

  @override
  LocationModel editLocation(LocationModel editedLocation) {
    return repo.editLocation(editedLocation);
  }

  @override
  List<LocationModel> loadLocations() {
    return repo.loadLocations();
  }

  @override
  LocationModel? resolve_choosed_location() {
    return repo.resolveCurrentLocation();
  }
}
