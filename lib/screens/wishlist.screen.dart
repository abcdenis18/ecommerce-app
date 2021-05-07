import 'package:ecommerce_app/models/NewProduct.dart';
import 'package:ecommerce_app/provider/WishListProvider.dart';
import 'package:ecommerce_app/styles/app.constant.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:ecommerce_app/styles/size.config.dart';
import 'package:ecommerce_app/widgets/custom.image.dart';
import 'package:ecommerce_app/widgets/wish.item.cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class WishListScreen extends StatefulWidget {
  WishListScreen({Key key}) : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    var wishProvider = Provider.of<WishListProvider>(context);
    double size = SizeConfig.screenSize;
    return Scaffold(
      backgroundColor: grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shopped',
                style: TextStyle(
                    fontSize: size * 2.8, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: wish.length,
                  itemBuilder: (context, index) {
                    NewProduct product = NewProduct.fromJson(wish[index]);
                    return WishItemCard(
                      product: product,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Container(
            height: size * 5,
            width: size * 5,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              FlutterIcons.cart_evi,
              color: white,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: size * 2.5,
              width: size * 2.5,
              decoration: BoxDecoration(
                color: blue,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${wishProvider.getCountItem}',
                  style: TextStyle(
                    color: white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
