import 'package:objectbox/objectbox.dart';

@Entity()
class LocationModel {
  int id = -1;
  String name = "Defecto";
  String url = '0.0.0.0:0000'; //ip+port
  int data_base_id = -1;
  int user_id = -1;
  String user_name = 'admin';
  String user_password = 'admin';

  LocationModel(this.id, this.name, this.url, this.data_base_id, this.user_id,
      this.user_name, this.user_password);

  LocationModel.byDefault();
}
