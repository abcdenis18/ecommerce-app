import 'package:flutter/cupertino.dart';

class MenuProvider extends ChangeNotifier {
  int appMenu = 0;

  int get menu {
    return this.appMenu;
  }

  void setMenu(int index){
    this.appMenu = index;
    notifyListeners();
  }
}