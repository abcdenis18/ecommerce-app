import 'package:ecommerce_app/provider/MenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextMenu extends StatelessWidget {
  final int index;
  final List listMenu;
  const TextMenu({this.index, this.listMenu});

  @override
  Widget build(BuildContext context) {
    var menuProvider = Provider.of<MenuProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () => menuProvider.setMenu(index),
        child: Text(
          '${listMenu[index]}',
          style: TextStyle(
            fontWeight:
                menuProvider.menu == index ? FontWeight.bold : FontWeight.w300,
            fontSize: menuProvider.menu == index ? 22 : 18,
          ),
        ),
      ),
    );
  }
}
