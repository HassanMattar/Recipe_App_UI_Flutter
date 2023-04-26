// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:recipe_app/Screen/Home/HomeScreen.dart';

import 'Screen/Home/profile.dart';

class NavItem {
  late final int id;
  late final String icon;
  late final Widget destination;
  NavItem({
    required this.id,
    required this.icon,
    required this.destination,
  });
  bool destinationChecker() {
    return (destination != null) ? true : false;
  }

 static List<NavItem> navItems=[
    NavItem(
      icon: "assets/icons/home.svg",
      destination:HomeScreen() ,
      id: 0
      ),
       NavItem(
      icon: "assets/icons/chef_nav.svg",
      destination:HomeScreen() ,
      id: 1
      ),
       NavItem(
      icon: "assets/icons/list.svg",
      destination:HomeScreen() ,
      id: 2
      ),
       NavItem(
      icon: "assets/icons/camera.svg",
      destination:HomeScreen() ,
      id: 3
      ),
      NavItem(
      icon: "assets/icons/user.svg",
      destination:Profile() ,
      id: 4
      ),
  ];

}
