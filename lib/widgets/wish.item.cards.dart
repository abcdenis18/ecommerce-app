import 'package:ecommerce_app/models/NewProduct.dart';
import 'package:ecommerce_app/provider/WishListProvider.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:ecommerce_app/styles/size.config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom.image.dart';

class WishItemCard extends StatelessWidget {
  final NewProduct product;
  const WishItemCard({this.product});

  @override
  Widget build(BuildContext context) {
    var wishProvider = Provider.of<WishListProvider>(context);
    double size = SizeConfig.screenSize;
    return Container(
      width: SizeConfig.screenWidth,
      height: size * 10,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CustomImage(
                    height: 8,
                    width: 8,
                    image: product.image,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${product.name}'),
                      Text('${product.price}'),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      height: size * 3,
                      width: size * 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: black,
                      ),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(color: white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('0'),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: (){
                      wishProvider.addItemWish(product);
                    },
                    child: Container(
                      height: size * 3,
                      width: size * 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: black,
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
