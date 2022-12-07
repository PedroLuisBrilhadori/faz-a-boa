import 'package:faz_a_boa/app/models/station.model.dart';
import 'package:faz_a_boa/app/modules/add_station/pages.dart';

CreateStation createStation(PageModel page) {
  final name = page.fields[0].controller.text;
  final address = page.fields[1].controller.text;
  final image = page.fields[2].controller.text;
  final cover = page.fields[3].controller.text;
  final fuels = stringToFuels(page.fields[4].controller.text);

  return CreateStation(
    name: name,
    rate: 4.0,
    fuels: fuels,
    cover: cover,
    image: image,
    address: address,
    distance: 4.0,
  );
}

List<dynamic> stringToFuels(String stringFuels) {
  return stringFuels.split(' ; ');
}
