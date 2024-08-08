import 'Models/data.dart';
import 'data_set.dart';

void main(List<String> arguments) {
  Data myData = Data.fromJson(data);

  print(myData.toJson());
}
