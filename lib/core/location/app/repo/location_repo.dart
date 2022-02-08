import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';

abstract class LocationRepo {
  LocationModel chooseLocation(int locationId);

  LocationModel createLocation(LocationModel newLocation);

  LocationModel deleteLocation(int locationId);

  LocationModel editLocation(LocationModel model);

  List<LocationModel> loadLocations();

  LocationModel resolveCurrentLocation();
}
