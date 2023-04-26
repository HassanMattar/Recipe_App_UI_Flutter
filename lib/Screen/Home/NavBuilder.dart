import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/sizeConfig.dart';

import '../../NavItem.dart';
import '../../constant.dart';

class NavBuilder extends StatefulWidget {
  
  @override
  
  State<NavBuilder> createState() => _NavBuilderState();
}

class _NavBuilderState extends State<NavBuilder> {
   static int  CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
   
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, -7), color: Color(0XFF4B1A39).withOpacity(0.2), blurRadius: 30),
      ], color: Colors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defultSize! * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
          NavItem.navItems.length,
          (index) => IconButton(
              onPressed: () {
                CurrentIndex = index;
                setState(() {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  NavItem.navItems[index].destination),
  );
                });
              },
              icon: SvgPicture.asset(
                NavItem.navItems[index].icon,
                color: CurrentIndex==index?KPrimaryColor:Color(0XFFD1D4D4),
              )),
        )),
      ),
    );
  }
}
