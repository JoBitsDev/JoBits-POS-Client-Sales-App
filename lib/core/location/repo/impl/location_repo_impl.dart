import 'package:jobits_pos_client_sales/constants/app_constants.dart';
import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';
import 'package:jobits_pos_client_sales/core/location/app/repo/location_repo.dart';
import 'package:jobits_pos_client_sales/objectbox.g.dart';

class LocationRepoImpl implements LocationRepo {
  final Box<LocationModel> locationBox =
      AppConstants.objectBox.store.box<LocationModel>();
  final String _selected_location_key = 'selected_location';

  LocationRepoImpl() {}

  @override
  LocationModel chooseLocation(int locationModel) {
    LocationModel? ret = locationBox.get(locationModel);
    AppConstants.sharedPreferences
        .setInt(_selected_location_key, locationModel);
    return ret == null ? LocationModel.byDefault() : ret;
  }

  @override
  LocationModel editLocation(LocationModel model) {
    int id = locationBox.put(model);
    var ret = locationBox.get(id);
    return ret == null ? LocationModel.byDefault() : ret;
  }

  @override
  List<LocationModel> loadLocations() {
    return locationBox.getAll();
  }

  @override
  LocationModel resolveCurrentLocation() {
    int? i = AppConstants.sharedPreferences.getInt(_selected_location_key);
    LocationModel? ret = locationBox.get(i == null ? -1 : i);
    return ret == null ? LocationModel.byDefault() : ret;
  }

  @override
  LocationModel createLocation(LocationModel newLocation) {
    // TODO: implement createLocation
    throw UnimplementedError();
  }

  @override
  LocationModel deleteLocation(int locationId) {
    LocationModel del = locationBox.get(locationId)!;
    locationBox.remove(locationId);
    return del;
  }
}
