import 'package:FoodDeliveryApp/models/products.dart';
import 'package:FoodDeliveryApp/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<Product>productsList=[
    Product(name:"Cereals",image:"fruit-granola.jpg",rating:4.2,vendor:"GoodFood",wishlist:true ,price: 12.77),
    Product(name:"Taccos",image:"tacos.jpg",rating:4.2,vendor:"GoodFood",wishlist:true ,price: 5.44),
    Product(name:"pasta",image:"pasta.jpg",rating:4.2,vendor:"GoodFood",wishlist:true ,price: 8.44)

];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_,index){
                                 return Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                              height:250,
                              width: 200,
                              decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:[
                             BoxShadow(
                              color: Colors.red[50],
                              offset: Offset(15, 5),
                              blurRadius: 4
                            ),
                          ],
                              
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/${productsList[index].image}",
                                height: 140,
                              
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        productsList[index].name,
                                        style:TextStyle(
                                          fontSize:16,
                                          fontWeight: FontWeight.w600
                                        ),

                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow:[
                                          BoxShadow(
                                            color: Colors.grey[300],
                                            offset: Offset(1, 1),
                                            blurRadius: 4
                                            ),
                                          ],
                              
                                          ),

                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: productsList[index].wishlist ? Icon
                                            (Icons.favorite,color: Colors.red,size: 18,)
                                            :Icon(Icons.favorite_border,color: Colors.red,size: 18,),
                                          ),
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  
                                ),
                                SizedBox(height: 4,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left:8.0),
                                          child: CustomText(text: productsList[index].rating.toString(),color:Colors.grey,size:14,),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Icon(Icons.star,color: Colors.red,size: 16,),
                                        Icon(Icons.star,color: Colors.red,size: 16,),
                                        Icon(Icons.star,color: Colors.red,size: 16,),
                                        Icon(Icons.star,color: Colors.red,size: 16,),
                                        Icon(Icons.star,color: Colors.grey,size: 16,)
                                      ],
                                    ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: CustomText(text:"\$${productsList[index].price}",weight:FontWeight.bold),
                                    )
                                  ],
                                ),
                   

                              ],

                            ),
                            ),
                                ); 
                              }
                              ),

                          );
  }
}