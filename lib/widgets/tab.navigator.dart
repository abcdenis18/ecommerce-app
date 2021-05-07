import 'package:ecommerce_app/screens/cart.screen.dart';
import 'package:ecommerce_app/screens/home.screen.dart';
import 'package:ecommerce_app/screens/profile.screen.dart';
import 'package:ecommerce_app/screens/wishlist.screen.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;
  const TabNavigator({this.navigatorKey, this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget page;
    if (tabItem == "home") page = HomeScreen();
    if (tabItem == "wish") page = WishListScreen();
    if (tabItem == "cart") page = CartScreen();
    if (tabItem == "profile") page = ProfileScreen();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
