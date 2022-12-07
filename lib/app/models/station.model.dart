class Fuel {
  String name;
  double price;

  Fuel({
    required this.name,
    required this.price,
  });
}

class Station {
  String id;
  String name;
  double rate;
  String image;
  String cover;
  String address;
  double distance;
  List<dynamic> fuels;

  Station({
    required this.id,
    required this.name,
    required this.rate,
    required this.fuels,
    required this.cover,
    required this.image,
    required this.address,
    required this.distance,
  });

  factory Station.fromJson(Map<String, dynamic> json, id) {
    double toDouble(number) {
      if (number is double) return number;
      if (number is int) return number.toDouble();

      return double.parse(number);
    }

    return Station(
      id: id,
      name: json['name'],
      address: json['address'],
      image: json['image'],
      rate: toDouble(json['rate']),
      distance: toDouble(json['distance']),
      cover: json['cover'],
      fuels: json['fuels'],
    );
  }
}

class CreateStation {
  String name;
  double rate;
  String image;
  String cover;
  String address;
  double distance;
  List<dynamic> fuels;

  CreateStation({
    required this.name,
    required this.rate,
    required this.fuels,
    required this.cover,
    required this.image,
    required this.address,
    required this.distance,
  });
}
