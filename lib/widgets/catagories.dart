import 'package:FoodDeliveryApp/models/category.dart';
import 'package:FoodDeliveryApp/widgets/text.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
List<Category>categoriesList=[
    Category(name:"Salad",image:"salad.png"),
    Category(name:"Ice-cream",image:"icecream.png"),
    Category(name:"Steak",image:"meat.png"),
    Category(name:"FastFood",image:"fast-food.png"),
    Category(name:"Beer",image:"beer.png"),
    Category(name:"Sushi",image:"sushi.png"),
    Category(name:"Pani-puri",image:"golgappa.png"),

  ];

 class Categories extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_,index){
          return  Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: Column(
              children: <Widget>[
                Container(
                decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(4, 6),
                  blurRadius: 20
                ),
          ], 
                            ),
                 child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("assets/images/${categoriesList[index].image}",width: 60,),
                  ),
                  
                ),
                SizedBox(
                  height:10,
                ),
                CustomText(
                  text:categoriesList[index].name,size:16,color:Colors.black)
              ],
            ),
            
          
          );
        },
          
            
      ),
    );
  }
}
