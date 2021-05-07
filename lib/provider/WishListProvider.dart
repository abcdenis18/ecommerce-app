import 'package:ecommerce_app/models/NewProduct.dart';
import 'package:flutter/cupertino.dart';

class WishListProvider extends ChangeNotifier {
  int count = 0;
  List<NewProduct> productWish = List<NewProduct>();

  int get getCountItem {
    return this.count;
  }

  List<NewProduct> get getListWish {
    return this.productWish;
  }

  void addCounter(int number){
    this.count += number;
    notifyListeners();
  }

  void addItemWish(NewProduct product) {
    this.productWish.add(product);
    notifyListeners();
  }
}