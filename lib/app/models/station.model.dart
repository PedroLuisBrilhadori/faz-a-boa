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

  factory Station.fromJson(Map<String, dynamic> json) {
    return Station(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      image: json['image'],
      rate: json['rate'],
      distance: json['distance'],
      cover: json['cover'],
      fuels: json['fuels'],
    );
  }
}
