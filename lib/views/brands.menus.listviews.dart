import 'package:ecommerce_app/models/Brands.dart';
import 'package:ecommerce_app/widgets/brands.menu.cards.dart';
import 'package:flutter/material.dart';

class BrandsMenuListViews extends StatelessWidget {
  final List brands;
  final double size;
  const BrandsMenuListViews({this.brands, this.size});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: brands.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Brands brandsObj = Brands.fromJson(brands[index]);
        return MenuBrandsCards(
          brands: brandsObj,
          size: size,
        );
      },
    );
  }
}
