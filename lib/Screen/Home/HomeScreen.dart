import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/sizeConfig.dart';

import '../../RecipeBundle.dart';
import '../../constant.dart';
import 'NavBuilder.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> catigory = ["ALL", "Chinese", "Indian", "Italian", "Mexico"];
int selectedIndex=0;
  int selectedCatigory = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBarBuilder(),
      body: Column(
        children: [
          Catigory(),
          ListOfItemBilder()
        ],
      ),
      bottomNavigationBar: NavBuilder(),
       
      
     
    );
  }

 

  Expanded ListOfItemBilder() {
    return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defultSize! * 1.8),
            child: GridView.builder(
              itemCount: recipeBundle.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defultSize! * 2
                          : SizeConfig.defultSize! * 0,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.62),
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: ItemBuliderList(index),
                  onTap: () {
                    print("hhhhhhhhhhh");
                  },
                );
              },
            ),
          ),
        );
  }

  Container ItemBuliderList(index) {
    return Container(
      decoration: BoxDecoration(
          color: recipeBundle[index].color,
          borderRadius: BorderRadius.circular(SizeConfig.defultSize! * 1.8)),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(SizeConfig.defultSize! * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  recipeBundle[index].title,
                  style: TextStyle(
                      fontSize: SizeConfig.defultSize! * 2.2,
                      color: Colors.white),
                ),
                SizedBox(
                  height: SizeConfig.defultSize! * 1,
                ),
                Text(
                  recipeBundle[index].descreption,
                  style: TextStyle(color: Colors.white54),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: SizeConfig.defultSize! * 1,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/chef.svg"),
                    SizedBox(
                      width: SizeConfig.defultSize,
                    ),
                    Text("${recipeBundle[index].chefs} chefs"),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.defultSize! * 1,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/pot.svg"),
                    SizedBox(
                      width: SizeConfig.defultSize,
                    ),
                    Text("${recipeBundle[index].recipes} recipes"),
                  ],
                ),
                Spacer(),
              ],
            ),
          )),
          AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight,
                  recipeBundle[index].imgSrc)),
        ],
      ),
    );
  }

  Padding Catigory() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defultSize! * 2),
      child: SizedBox(
        height: SizeConfig.defultSize! * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Catigory_Text(index),
            itemCount: catigory.length),
      ),
    );
  }

  Widget Catigory_Text(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        selectedCatigory = index;
      },
      child: Container(
        margin: EdgeInsets.only(left: SizeConfig.defultSize! * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defultSize! * 2,
          vertical: SizeConfig.defultSize! * 0.5,
        ),
        decoration: BoxDecoration(
            color: selectedCatigory == index
                ? Color(0xffeff3ee)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SizeConfig.defultSize! * 1.6)),
        child: Text(
          catigory[index],
          style: TextStyle(color: KPrimaryColor),
        ),
      ),
    );
  }

  AppBar AppBarBuilder() {
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
      title: SvgPicture.asset("assets/icons/logo.svg"),
      //on ios is sefult true
      centerTitle: true,
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        // it means 5 becuse by out defulitSize =10
        SizedBox(
          width: SizeConfig.defultSize! * 0.5,
        )
      ],
    );
  }
}
