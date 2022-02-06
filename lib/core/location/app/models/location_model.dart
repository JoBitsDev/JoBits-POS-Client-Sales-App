import 'package:objectbox/objectbox.dart';

@Entity()
class location_model {
  int id;
  String name;
  String url; //ip+port
  int data_base_id;
  int user_id;
  String user_name;
  String user_password;

  location_model(this.id, this.name, this.url, this.data_base_id, this.user_id,
      this.user_name, this.user_password);
}
