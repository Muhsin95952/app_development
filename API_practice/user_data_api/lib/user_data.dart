import 'package:flutter/animation.dart';

class User {
  int id;
  String name;
  String username;
  String email;
  Address? address;
  String phone;
  String website;
  Company? company;

  User({
    required this.id, 
    required this.name, 
    required this.username, 
    required this.email, 
    required this.address, 
    required this.phone, 
    required this.website, 
    required this.company});

    factory User.fromJson(Map<String, dynamic> json){
      return User(id: json["id"], 
      name: json["name"], 
      username: json["username"], 
      email: json["email"], 
      address: json["address"] != null ? Address.fromJson(json['address']) : null, 
      phone: json["phone"], 
      website: json["website"], 
      company: json["company"] != null ? Company.fromJson(json['company']) : null
      );
    }
}

class Address{
  String street;
  String suite;
  String city;
  String zipcode;
  Geo? geo;

  Address({
    required this.street, 
    required this.suite, 
    required this.city, 
    required this.zipcode, 
    required this.geo
  });

  factory Address.fromJson(Map<String, dynamic> json){
    return Address(
      street: json["street"], 
      suite: json["suite"], 
      city: json["city"], 
      zipcode: json["zipcode"], 
      geo: json["geo"] != null ? Geo.fromJson(json['geo']) : null
      );
  }

}

class Geo {
  String lat;
  String lag;

  Geo({
    required this.lat, 
    required this.lag});

  factory Geo.fromJson(Map<String, dynamic> json){
    return Geo(
      lag: json["lat"], 
      lat: json["lag"]);
  }

}

class Company{
  String name;
  String catchphrase;
  String bs;

  Company({
    required this.name,
    required this.catchphrase, 
    required this.bs
  });

  factory Company.fromJson(Map<String, dynamic> json){
    return Company(
      name: json["name"], 
      catchphrase: json["catchphrase"], 
      bs: json["bs"]);
  }
}