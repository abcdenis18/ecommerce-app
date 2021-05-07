import 'package:ecommerce_app/models/Brands.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:flutter/material.dart';

class MenuBrandsCards extends StatelessWidget {
  final double size;
  final Brands brands;
  const MenuBrandsCards({this.size, this.brands});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: size * 15,
        width: size * 15,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            brands.logo,
            SizedBox(
              height: 10,
            ),
            Text(
              '${brands.name}',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
