import 'package:jobits_pos_client_sales/core/location/app/models/location_model.dart';
import 'package:jobits_pos_client_sales/core/location/repo/location_repo.dart';
import 'package:jobits_pos_client_sales/objectbox.g.dart';

class location_repo_impl implements location_repo {




  location_repo_impl() {
    //final store = openStore();
  //  final Box location_box = store.box<location_model>();
  }

  @override
  location_model choose_location(location_model model) {
    throw UnimplementedError();
  }

  @override
  location_model edit_location(location_model model) {
    // TODO: implement edit_location
    throw UnimplementedError();
  }

  @override
  List<location_model> load_locations() {
    //List<location_model> loc = store.bo
    // return preferences.get
    throw UnimplementedError();

  }

  @override
  location_model resolve_choosed_location() {
    // TODO: implement resolve_choosed_location
    throw UnimplementedError();
  }

  @override
  List<location_model> save_locations(List<location_model> locations) {
    // TODO: implement save_locations
    throw UnimplementedError();
  }


}
