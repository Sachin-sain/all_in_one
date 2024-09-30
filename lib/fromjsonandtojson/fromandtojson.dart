

class Student{
  final String name;
  final String email;
  final String rollNo;
  final String branch;
  final Address address;
  Student({required this.name,required this.rollNo, required this.branch,required this.email,required this.address});

  ///convert class or object into map
  factory Student.fromJson(Map<String, dynamic> map) {
    return Student(
      name: map['name'],
      email: map['age'],
      rollNo: map['rollNo'],
      branch: map['branch'],
      address: Address.fromJson(map['address']),
    );
  }
///convert map into json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'rollNo':rollNo,
      'branch':branch,
      'address': address.toJson(),

    };
  }
}

class Address {
  final String lat;
  final String long;

  Address({required this.lat, required this.long});

  // fromJson method for Address
  factory Address.fromJson(Map<String, dynamic> map) {
    return Address(
      lat: map['lat'],
      long: map['long'],
    );
  }

  // toJson method for Address
  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'long': long,
    };
  }
}