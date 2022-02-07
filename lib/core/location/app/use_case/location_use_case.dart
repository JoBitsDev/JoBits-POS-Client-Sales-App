import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';

abstract class LocationUseCase {

  List<LocationModel> load_locations();

  List<LocationModel> save_locations(List<LocationModel> locations);

  LocationModel edit_location(LocationModel model);

  LocationModel choose_location(LocationModel model);

  LocationModel resolve_choosed_location();

}