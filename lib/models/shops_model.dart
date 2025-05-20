
import 'package:flutter/material.dart';

class ShopsModel {
  String name;
  String iconPath;
  Color boxcolor;
  

ShopsModel({
  required this.name,
  required this.iconPath,
  required this.boxcolor,

});
 static List<ShopsModel> getCategories(){
  List<ShopsModel> categories = [];
  categories.add(
    ShopsModel(name: "Electrical Shops" , iconPath: 'assets/icons/electrical.svg',
    boxcolor:  Colors.white)
  );
  categories.add(
    ShopsModel(name: "Book Shop" , iconPath: 'assets/icons/book.svg',
    boxcolor: Colors.white)
  );
  categories.add(
    ShopsModel(name: "Hardware Shop" , iconPath: 'assets/icons/hardware.svg',
    boxcolor:  Colors.white)
  );
  return categories;
}


}
