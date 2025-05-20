import 'package:flutter/material.dart';

class FoodModels {
  String name;
  String iconPath;
  Color boxcolor;
  

FoodModels({
  required this.name,
  required this.iconPath,
  required this.boxcolor,

});
 static List<FoodModels> getFoods(){
  List<FoodModels> foods = [];
  foods.add(
    FoodModels(name: "Canteens" , iconPath: 'assets/icons/cant.svg',
    boxcolor:  Colors.white)
  );
  foods.add(
    FoodModels(name: "Juice center" , iconPath: 'assets/icons/juice.svg',
    boxcolor: Colors.white)
  );
  foods.add(
    FoodModels(name: "Restaurants" , iconPath: 'assets/icons/rest.svg',
    boxcolor:  Colors.white)
  );
  return foods;
}


}
