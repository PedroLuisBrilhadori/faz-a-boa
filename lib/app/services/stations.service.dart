import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import 'package:faz_a_boa/app/models/station.model.dart';

class StationService {
  Future<List<Station>> getItems() async {
    final data = await FirebaseFirestore.instance.collection('postos').get();

    final docs = data.docs;

    final List<Station> stations = [];

    for (var station in docs) {
      stations.add(Station.fromJson(station.data(), station.id));
    }

    print(stations);

    return stations;
  }

  Future<Station> getItem(String id) async {
    final stations = await getItems();
    return stations.firstWhere((element) => element.id == id);
  }
}
