import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'app.styles.dart';

List<String> listMenu = ["POPULAR", " NEWEST", "FAVORITES"];

List<Map<String, dynamic>> brands = [
    {
      'logo': Icon(
        FlutterIcons.headset_dock_mco,
        color: white,
        size: 40,
      ),
      'name': 'Oculus',
    },
    {
      'logo': Icon(
        FlutterIcons.apple1_ant,
        color: white,
        size: 40,
      ),
      'name': 'Apple',
    },
    {
      'logo': Icon(
        FlutterIcons.beats_mco,
        color: white,
        size: 40,
      ),
      'name': 'Beats',
    },
  ];

List<Map<String, dynamic>> products = [
  {
    "brand" : "apple",
    "name" : "Headphone Apple",
    "price" : 549,
    "fav" : false,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "brand" : "apple",
    "name" : "Headphone Apple",
    "price" : 549,
    "fav" : false,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "brand" : "apple",
    "name" : "Headphone Apple",
    "price" : 549,
    "fav" : false,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "brand" : "apple",
    "name" : "Headphone Apple",
    "price" : 549,
    "fav" : false,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "brand" : "apple",
    "name" : "Headphone Apple",
    "price" : 549,
    "fav" : false,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
];

List<Map<String, dynamic>> wish = [
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  {
    "name" : "Headphone Apple",
    "price" : 549000.0,
    "count" : 0,
    "image" : "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/airpods-max-select-silver-202011_FMT_WHH?wid=890&hei=890&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1604615276000"
  },
  
];