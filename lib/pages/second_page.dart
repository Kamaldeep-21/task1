
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Write your reviews",
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
                  "Step 2/2 ",
                          
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
  padding: const EdgeInsets.only(left: 12.0, top: 8,right: 12.0),
  child: Row(
    children: [
      Expanded(
        flex: 97, 
        child: Container(
          height: 2,
          color: const Color.fromARGB(255, 119, 57, 34),
        ),
      ),
      Expanded(
        flex: 6, 
        child: Container(
          height: 2,
          color: Color(0xFFF5F5F5), 
        ),
      ),
      Expanded(
        flex: 97, 
        child: Container(
          height: 2,
          color: const Color.fromARGB(255, 119, 57, 34),
        ),
      ),
    ],
  ),
),
SizedBox(height: 30,),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Text("Give info about the issue you're\n facing",
    style: TextStyle(
      fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF2E2F31)),),
  ),
  SizedBox(height: 25,),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Text("Short title ",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
            color: Color(0xFF2E2F31)),
        ),
      ),
      SizedBox(height: 8,),
      Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 16,),
        child: TextField(
          expands: true,
          minLines: null,
          maxLines: null,
          textAlignVertical: TextAlignVertical.top,
    decoration: InputDecoration(
      hintText: "e.g. No one is giving Luxor pens",
      contentPadding: EdgeInsets.only(left: 12,top: 12,),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: const Color.fromARGB(255, 227, 225, 225),
          width: 2.0,
        )
      ),
      
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color:  Color.fromARGB(255, 227, 225, 225),
          width: 2.0,
        ),
      ),
      filled: true,
      fillColor: Colors.transparent,
    )
    ),
      ),
      
      
    ],
  ),
SizedBox(height: 10,),
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0,),
        child: Text("Briefly explain your issue ",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
            color: Color(0xFF2E2F31)),
        ),
      ),
      SizedBox(height: 8,),
      Container(
        height: 200,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          expands: true,
          minLines: null,
          maxLines: null,
          textAlignVertical: TextAlignVertical.top,
    decoration: InputDecoration(
      hintText: "Tell us exactly what's wrong so it can be fixed faster.",
      contentPadding: EdgeInsets.only(left: 12,top: 12,),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: const Color.fromARGB(255, 227, 225, 225),
          width: 2.0,
        )
      ),
      
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color:  Color.fromARGB(255, 227, 225, 225),
          width: 2.0,
        ),
      ),
      filled: true,
      fillColor: Colors.transparent,
    )
    ),
      ),
      
      
    ],
  ),
],
),
SizedBox(height: 20,),
Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Icon(Icons.add,
      size: 32,
      color: Colors.brown,),
    ),
    Text("Add photos",
    style: TextStyle(
      fontSize: 15,
      color: Colors.brown,
      fontWeight: FontWeight.bold,
    ),
    ),
  ],
),
SizedBox(height: 160,),
Padding(
  padding: const EdgeInsets.only(left: 12,right: 12),
  child: Row(
    children: [
      Expanded(
          
          child: Container(
            height: 2,
            color: const Color.fromARGB(255, 227, 225, 225),
          ),
        ),
      
    ],
  ),
),
SizedBox(height: 10,),
Container(
    height: 60,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 119, 57, 34),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Submit Complaint",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
  SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}