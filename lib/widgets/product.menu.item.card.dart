import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:flutter/material.dart';

import 'custom.image.dart';

class ProductMenuItemCard extends StatelessWidget {
  final Product product;
  final double size;
  const ProductMenuItemCard({this.product, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size * 25,
      width: size * 18,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomImage(
              height: 17,
              width: 18,
              image: product.image,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${product.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text('\$${product.price} USD')
          ],
        ),
      ),
    );
  }
}
