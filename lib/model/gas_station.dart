//
//DATA MODEL
//
import 'dart:ffi';

class GasStation{
  int id;
  Float distance; //vai arredondar?
  Float rating;
  bool open; //se tá aberto ou fechado
  String name;
  String address;

  GasStation(
    this.id,
    this.distance,
    this.rating,
    this.open,
    this.name,
    this.address,
  );

  factory GasStation.fromJson(Map<String, dynamic> json){
    return GasStation(
      json,
      json,
      json,
      json,
      json,
      json,
    );
  }
}

