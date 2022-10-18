class Station {
  String id;
  String name;
  String address;
  String image;
  double rate;
  double distance;

  Station({
    required this.id,
    required this.name,
    required this.address,
    required this.image,
    required this.rate,
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
    );
  }
}
