import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solution1/models/food_models.dart';
import 'package:solution1/models/shops_model.dart';


class HomePage extends StatelessWidget {
    HomePage({super.key});

  List<ShopsModel> categories = [];

  List<FoodModels> foods = [];

  void _getInfo(){
    categories = ShopsModel.getCategories();
    foods = FoodModels.getFoods();
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        
        children: [
      _shops(),
      SizedBox(height: 40,),
      Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text("Food Area",
            style: TextStyle(color: const Color.fromARGB(95, 33, 33, 33),
            fontSize: 15,
            fontWeight: FontWeight.normal,
            ),
            ),),
            SizedBox(
              height: 250,
              child: ListView.separated(
                itemCount: foods.length,
                scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10,),
                itemBuilder: (BuildContext context, int index) { 
                  return Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration( 
                      
                      color: foods[index].boxcolor,
                      borderRadius:BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(foods[index].iconPath),
                          ),
                        ),
                        Text(foods[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 15),
                        )
                      ],
                    ),
                  );
                 }, 

              ),

              
            )
      ],
      ),
        ],
      ),
    );
  }

  Column _shops() {
    return Column(
      mainAxisAlignment : MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text("Write your reviews",
          style:TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        SizedBox(height: 20,),
        
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Step 1/2 ",
            
            style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 2,
                      color: Colors.brown,
                    ),
                  ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text("Select the space you're facing\n problem in your city.",
            maxLines: 2,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            ),
            SizedBox(height: 15,),
            
            Text("Shops",
            style: TextStyle(color: const Color.fromARGB(95, 33, 33, 33),
            fontSize: 15,
            fontWeight: FontWeight.normal,
            ),
            ),
            SizedBox(
              height: 250,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10,),
                itemBuilder: (BuildContext context, int index) { 
                  return Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration( 
                      
                      color: categories[index].boxcolor,
                      borderRadius:BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(categories[index].iconPath),
                          ),
                        ),
                        Text(categories[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 15),
                        )
                      ],
                    ),
                  );
                 }, 

              ),

              
            )
          ],
        )
      ],
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
        child: SvgPicture.asset('assets/icons/leftarrow.svg',
        ),
        
      ),
    );
  }
}