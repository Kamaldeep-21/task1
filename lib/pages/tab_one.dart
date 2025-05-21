import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solution1/models/food_models.dart';
import 'package:solution1/models/shops_model.dart';

class TabOne extends StatefulWidget {
  const TabOne({super.key});

  @override
  State<TabOne> createState() => _TabOneState();
}
class _TabOneState extends State<TabOne> {
  List<FoodModels> foods = [
    FoodModels(name: "Canteens", iconPath: 'assets/icons/cant.svg', boxcolor: Colors.white),
    FoodModels(name: "Juice center", iconPath: 'assets/icons/juice.svg', boxcolor: Colors.white),
    FoodModels(name: "Restaurants", iconPath: 'assets/icons/rest.svg', boxcolor: Colors.white),
  ];

  List<FoodModels> shops = [
    FoodModels(name: "Electrical Shops", iconPath: 'assets/icons/electrical.svg', boxcolor: Colors.white),
    FoodModels(name: "Book Shop", iconPath: 'assets/icons/book.svg', boxcolor: Colors.white),
    FoodModels(name: "Hardware Shop", iconPath: 'assets/icons/hardware.svg', boxcolor: Colors.white),
  ];

  Set<int> selectedShopIndexes = {};
  Set<int> selectedFoodIndexes = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select the space you’re facing problem in your city.",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF2E2F31)),
        ),
        const SizedBox(height: 24),
        const Text("Shops", style: TextStyle(color: Color(0xFF676767), fontSize: 16)),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: shops.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedShopIndexes.contains(index);
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    selectedShopIndexes.remove(index);
                  } else {
                    selectedShopIndexes.add(index);
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: optionBar(shops[index], isSelected),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        const Text("Food area", style: TextStyle(color: Color(0xFF676767), fontSize: 16)),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: foods.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedFoodIndexes.contains(index);
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    selectedFoodIndexes.remove(index);
                  } else {
                    selectedFoodIndexes.add(index);
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: optionBar(foods[index], isSelected),
              ),
            );
          },
        ),
      ],
    );
  }
}


Widget optionBar(FoodModels item,bool isSelected){
  return Container(
    height: 72,
    width: double.infinity,
    decoration: BoxDecoration(
    color: isSelected?Color(0xFFFFE8D7):Colors.white,
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: isSelected ? Color(0xFF713100) : Color(0xFFC5C5D1),
      width: 2,
    ),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: isSelected?Color(0xFF713100):Colors.white,
            ),
            child: Center(
              child: SvgPicture.asset(
                item.iconPath,                
                color: isSelected?Colors.white:Color(0xFF713100),
                height: 20,
                width: 20,
              ),
            ),
          ),
        ),
        Text(item.name,style: TextStyle(color: isSelected?Color(0xFF713100):Color(0xFF2E2F31),fontSize: 16),)
      ],
    ),
  );
}