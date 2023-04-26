// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

class RecipeBundle {
  late final int chefs,id,recipes;
  late final String title,descreption,imgSrc;
  late final Color color;
  RecipeBundle({
    required this.chefs,
    required this.id,
    required this.recipes,
    required this.title,
    required this.descreption,
    required this.imgSrc,
    required this.color,
  });
  }
    List<RecipeBundle> recipeBundle = [
    RecipeBundle(chefs:16 ,color:Color(0xFFD82D40) ,descreption:"New and tasty recipes every minute" ,id: 1,imgSrc: "assets/images/cook_new@2x.png",recipes: 95,title:"Cooke Some Thing Everyday" )
  ,    RecipeBundle(chefs:10 ,color:Color(0xFF90AF17) ,descreption:"cook recipe for special " ,id: 2,imgSrc: "assets/images/best_2020@2x.png",recipes: 26,title:"Best Of 2023" )
    ,RecipeBundle(chefs:11,color:Color.fromARGB(255, 82, 45, 216) ,descreption:"What is your favorit food dish" ,id: 3,imgSrc: "assets/images/food_court@2x.png",recipes: 30,title:"CFood Court" )

  ];

