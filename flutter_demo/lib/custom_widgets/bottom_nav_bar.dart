import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/colors.dart';
import 'package:flutter_demo/utils/constants.dart';

class BottomNavBar extends StatefulWidget {
  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [{Icons.home, Constants.EXPLORE},{Icons.favorite, Constants.WATCH_LIST},{Icons.local_offer, Constants.DETAILS},{Icons.notifications, Constants.NOTIFICATIONS}].map((item) => BottomNavigationBarItem(
        activeIcon: Icon(
          item.first,
          color: MyColors.instance.primaryColor,
        ),
        icon: Icon(
          item.first,
        ),
        title: Text(
          item.last,
          textScaleFactor: 1,
          style: TextStyle(color: Colors.black),
        )))
    .toList(),
    );
  }
}
