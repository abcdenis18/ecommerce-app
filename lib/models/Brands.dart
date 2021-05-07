import 'package:flutter/cupertino.dart';

class Brands {
  final String name;
  final Icon logo;

  Brands({this.name, this.logo});

  factory Brands.fromJson(Map<String, dynamic> json) => Brands(
    logo: json['logo'],
    name: json['name'],
  );
}