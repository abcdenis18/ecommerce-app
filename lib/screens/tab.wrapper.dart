import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:ecommerce_app/widgets/tab.navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TabWrapper extends StatefulWidget {
  TabWrapper({Key key}) : super(key: key);

  @override
  _TabWrapperState createState() => _TabWrapperState();
}

class _TabWrapperState extends State<TabWrapper> {
  GlobalKey<NavigatorState> _scaffoldKey = GlobalKey<NavigatorState>();
  int selectedIndex = 0;
  String currentTab = "home";
  List<String> pages = ["home", "wish", "cart", "profile"];
  Map<String, GlobalKey<NavigatorState>> navigatorKey = {
    "home" : GlobalKey<NavigatorState>(),
    "wish" : GlobalKey<NavigatorState>(),
    "cart" : GlobalKey<NavigatorState>(),
    "profile" : GlobalKey<NavigatorState>()
  };

  void selectedTab(String currentTabs, int index){
    if(currentTabs == currentTab){
      navigatorKey[currentTabs].currentState.popUntil((route) => route.isFirst);
    }else{
      setState(() {
        currentTab = pages[index];
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _scaffoldKey,
      body: Stack(
        children: [
          buildPage("home"),
          buildPage("wish"),
          buildPage("cart"),
          buildPage("profile"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          selectedTab(pages[index], index);
        },
        currentIndex: selectedIndex,
        backgroundColor: grey,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.home_ant, color: selectedIndex == 0 ? blue : darkGrey,),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.favorite_border_mdi, color: selectedIndex == 1? blue : darkGrey,),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.cart_outline_mco, color: selectedIndex == 2? blue : darkGrey,),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.profile_ant, color: selectedIndex == 3? blue : darkGrey,),
            title: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget buildPage(String tabItem){
    return Offstage(
      offstage: currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKey[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}