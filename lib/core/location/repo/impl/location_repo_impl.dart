import 'package:jobits_pos_client_sales/core/location/app/model/location_model.dart';
import 'package:jobits_pos_client_sales/core/location/app/repo/location_repo.dart';
//import 'package:jobits_pos_client_sales/objectbox.g.dart';

class location_repo_impl implements LocationRepo {
  location_repo_impl() {
    //final store = openStore();
    //  final Box location_box = store.box<location_model>();
  }

  @override
  LocationModel choose_location(LocationModel model) {
    throw UnimplementedError();
  }

  @override
  LocationModel edit_location(LocationModel model) {
    // TODO: implement edit_location
    throw UnimplementedError();
  }

  @override
  List<LocationModel> load_locations() {
    //List<location_model> loc = store.bo
    // return preferences.get
    throw UnimplementedError();
  }

  @override
  LocationModel resolve_choosed_location() {
    // TODO: implement resolve_choosed_location
    throw UnimplementedError();
  }

  @override
  List<LocationModel> save_locations(List<LocationModel> locations) {
    // TODO: implement save_locations
    throw UnimplementedError();
  }
}
