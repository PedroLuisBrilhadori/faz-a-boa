import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:faz_a_boa/app/models/station.model.dart';

class StationService {
  Future<List<Station>> getItems() async {
    final List<Station> stations = [];

    final String file = await rootBundle.loadString('lib/assets/data.json');

    final dynamic data = await json.decode(file);

    data['stations'].forEach(
      (station) => {stations.add(Station.fromJson(station))},
    );

    return stations;
  }

  Future<Station> getItem(String id) async {
    final stations = await getItems();
    return stations.firstWhere((element) => element.id == id);
  }
}
