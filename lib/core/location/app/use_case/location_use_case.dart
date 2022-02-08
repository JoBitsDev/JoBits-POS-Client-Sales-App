import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';

abstract class LocationUseCase {
  LocationModel chooseLocation(int locationId);

  LocationModel createLocation(LocationModel newLocation);

  LocationModel deleteLocation(int locationId);

  LocationModel editLocation(LocationModel editedLocation);

  List<LocationModel> loadLocations();

  LocationModel? resolve_choosed_location();
}
