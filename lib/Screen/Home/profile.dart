import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/constant.dart';
import 'package:recipe_app/sizeConfig.dart';

import 'NavBuilder.dart';

class Profile extends StatelessWidget {
  List<String> catigory = ["ALL", "Chinese", "Indian", "Italian", "Mexico"];

  int selectedIndex = 0;

  int selectedCatigory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        leading: SizedBox(),
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text(
              "Edite",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defultSize! * 22,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: ArcClipper(),
                    child: Container(
                      color: KPrimaryColor,
                      height: SizeConfig.defultSize! * 15,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: SizeConfig.defultSize! * 12,
                          width: SizeConfig.defultSize! * 14,
                          //  child: Image.asset("assets/images/pic.png"),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white,
                                  width: SizeConfig.defultSize! * 0.8),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/pic.png",))),
                        ),
                        Text(
                          "Hassan Mattar",
                          style: TextStyle(
                              fontSize: SizeConfig.defultSize! * 2,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: SizeConfig.defultSize! * .2,
                        ),
                        Text(
                          "hassanmattar@gmail.com",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListItimeInfo("assets/icons/bookmark_fill.svg","Saved Recipes",),
            ListItimeInfo("assets/icons/chef_color.svg","Super Plan",),
            ListItimeInfo("assets/icons/language.svg","Change Language",),
            ListItimeInfo("assets/icons/info.svg","Help",),
          ],
        ),
      ),
      bottomNavigationBar: NavBuilder(),
    );
  }

  InkWell ListItimeInfo(String icon, String text) {
    return InkWell(
      splashColor: KPrimaryColor.withOpacity(0.3),
      
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defultSize! * 2,
                vertical: SizeConfig.defultSize! * 2),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  color: Colors.black,
                ),
                SizedBox(
                  width: SizeConfig.defultSize! * 2,
                ),
                Text(text),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 100);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) => false;
}
