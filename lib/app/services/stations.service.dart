import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:faz_a_boa/app/models/station.model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StationService {
  Future<List<Station>> getItems() async {
    final data = await FirebaseFirestore.instance.collection('postos').get();

    final docs = data.docs;

    final List<Station> stations = [];

    for (var station in docs) {
      stations.add(Station.fromJson(station.data(), station.id));
    }

    return stations;
  }

  Future<Station> getItem(String id) async {
    final stations = await getItems();
    return stations.firstWhere((element) => element.id == id);
  }

  Future addStation(CreateStation station) async {
    await FirebaseFirestore.instance.collection('postos').doc().set({
      'name': station.name,
      'address': station.address,
      'cover': station.cover,
      'distance': station.distance,
      'fuels': station.fuels,
      'image': station.image,
      'is_open': true,
      'rate': station.rate
    }).onError((error, stackTrace) => print(error));

    Modular.to.navigate('/home');
  }
}
