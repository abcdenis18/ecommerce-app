import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/styles/app.constant.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:ecommerce_app/styles/size.config.dart';
import 'package:ecommerce_app/views/brands.menus.listviews.dart';
import 'package:ecommerce_app/widgets/custom.image.dart';
import 'package:ecommerce_app/widgets/product.menu.item.card.dart';
import 'package:ecommerce_app/widgets/text.menu.item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.screenSize;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [grey, white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          FlutterIcons.grid_ent,
                          color: black,
                        ),
                        Icon(
                          FlutterIcons.search_faw,
                          color: black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'CHOOSE',
                          style: TextStyle(color: darkGrey, fontSize: 20),
                        ),
                        Text(
                          'BRAND',
                          style: TextStyle(
                              color: black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: size * 15.5,
                      child: BrandsMenuListViews(
                        brands: brands,
                        size: size,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: size * 4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listMenu.length,
                        itemBuilder: (context, index) {
                          return TextMenu(
                            index: index,
                            listMenu: listMenu,
                          );
                        },
                      ),
                    ),
                    Container(
                      height: size * 25.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index){
                          Product product = Product.fromJson(products[index]);
                          return Padding(
                            padding: const EdgeInsets.only(right : 15.0),
                            child: ProductMenuItemCard(
                              product: product,
                              size: size,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
