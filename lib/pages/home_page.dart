import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solution1/models/food_models.dart';
import 'package:solution1/models/shops_model.dart';
import 'package:solution1/pages/tab_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ShopsModel> categories = [];

  List<FoodModels> foods = [];

  void _getInfo() {
    categories = ShopsModel.getCategories();
    foods = FoodModels.getFoods();
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start  ,
            children: [
               Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Write your reviews",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Step 1/2 ",
                          
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(height: 2, color: Colors.brown),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 2, color: Color(0XffF5F5F5)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 15),
              TabOne(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
  
  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('assets/icons/leftarrow.svg'),
      ),
    );
  }
}