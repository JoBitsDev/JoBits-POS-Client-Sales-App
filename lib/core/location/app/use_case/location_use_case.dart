import 'package:jobits_pos_client_sales/core/location/app/models/location_model.dart';

abstract class location_use_case {

  List<location_model> load_locations();

  List<location_model> save_locations(List<location_model> locations);

  location_model edit_location(location_model model);

  location_model choose_location(location_model model);

  location_model resolve_choosed_location();

}