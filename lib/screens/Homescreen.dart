import 'package:FoodDeliveryApp/widgets/catagories.dart';
import 'package:FoodDeliveryApp/widgets/featured_products.dart';
import 'package:FoodDeliveryApp/widgets/text.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //Background container
          Container(
              height:size.height*0.4,
              decoration: BoxDecoration(
                color:Colors.purple[100],
                borderRadius: BorderRadius.circular(20)
              ),
              
              ),
              SafeArea(
                child: Column(
                  
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                      children: <Widget>[
                        
                        Padding(
                          padding: const EdgeInsets.only(left:20,top:10),
                          child: CustomText( //customized text imported from text
                            text:"What do you like to eat?",
                            size:18,
                          ),
                          
                        ),
                        Stack(
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.notifications_none), onPressed: (){},  // bell icon
                              ),
                              Positioned(
                                top: 13,
                                right: 12,
                                child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color:Colors.red,
                                borderRadius:BorderRadius.circular(20),
                              ),

                                ),
                                                                                        
                              ),
                                                                                                                                            
                          ],
                              ),
                              
                        
                        
                      ],
                                      
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Container( //search box container
                      margin: EdgeInsets.symmetric(horizontal:10),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                     
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
                        child:ListTile(
                          leading: Icon(Icons.search,color: Colors.purple[300],),
                          title: TextField(
                            decoration:InputDecoration(
                              hintText:"Find a food or Resturants",
                              border: InputBorder.none,
                            ),
                          ),
                          trailing:  Icon(Icons.filter_list,color: Colors.purple[300],)
                          ,
                        ),
                            ),
                            SizedBox(
                              height:17,
                            ),
                            Categories(
                              
                            ),
                          
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(text:"Featured",size:25 ,color: Colors.grey,)),
                            ),
                           Featured(),
                          
                           
                            
                            
                                                              
                  ],
                  
                ),
              
                
                
              ),
              
              
              
              
             
                      
        ],
        
        
                    
      ),

     
      
      bottomNavigationBar: Container(
        
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Padding(
              padding:EdgeInsets.all(8.0) ,
              child: Image.asset("assets/images/home.png",width: 33,height: 33,),
              
              ),
              Padding(
              padding:EdgeInsets.all(8.0) ,
              child: Image.asset("assets/images/target.png",width: 33,height: 33,),
              
              ),
              Padding(
              padding:EdgeInsets.all(8.0) ,
              child: Image.asset("assets/images/shopping-bag.png",width: 33,height: 33,),
              
              ),
            

          ],
        ),
      ),
      
    
        
    
      
    );
  }
}


