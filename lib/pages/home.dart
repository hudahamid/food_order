import 'package:flutter/material.dart';
import 'package:food_order/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override 
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

bool icecream=false, pizza=false, salad=false, burger=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.only(top: 50.0,left:20.0, right: 20.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Text("Hello Sara  ",
              style: AppWidget.boldTextFieldStyle()
             ),
             Container(
              padding: EdgeInsets.all(3),
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
            child:Icon(Icons.shopping_cart,color: Colors.white,) ,
          )
            ],
          ),
          SizedBox(height: 30.0,),
           Text("Delicious food ",
              style: AppWidget.headerTextFieldStyle()
             ),
            Text("Discover and  Get Great Food",
              style: AppWidget.LightTextFieldStyle()
             ),
             SizedBox(height: 20.0,),
             showItem(),
             SizedBox(height:  20.0,),
             Row(children: [
              Container(
                child: Column(children: [
                  Image.asset("images/salad2.png", height: 150,width: 150, fit: BoxFit.cover,),
                  Text("Salad", style: AppWidget.SemiBoldTextFieldStyle(),),
                  Text("Fresh and Healthy", style: AppWidget.LightTextFieldStyle(),),
                ],),
              )
             ],),
         
      ],) 
      ,)
    );
  }


  Widget showItem(){
  return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             GestureDetector(
              onTap: (){
                pizza=false;
                icecream=true;
                salad=false;
                burger=false;
                setState(() {
                  
                });
              },
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(color: icecream?Colors.black : Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/ice-cream.png",height: 50,width: 50, fit: BoxFit.cover,color: icecream?Colors.white:Colors.black,),
                ) ,
              ),
            ),

              GestureDetector(
              onTap: (){
                pizza=false;
                icecream=false;
                salad=true;
                burger=false;
                setState(() {
                  
                });
              },
               child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                   decoration: BoxDecoration(color: salad?Colors.black : Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/salad.png",height: 50,width: 50, fit: BoxFit.cover,color: salad?Colors.white:Colors.black,),
                ) ,
                           ),
             ),

             GestureDetector(
              onTap: (){
                pizza=false;
                icecream=false;
                salad=false;
                burger=true;
                setState(() {
                  
                });
              },
               child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                   decoration: BoxDecoration(color: burger?Colors.black : Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/burger.png",height: 50,width: 50, fit: BoxFit.cover,color: burger?Colors.white:Colors.black,),
                ) ,
                           ),
             ),

              GestureDetector(
              onTap: (){
                pizza=true;
                icecream=false;
                salad=false;
                burger=false;
                setState(() {
                  
                });
              },
               child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                   decoration: BoxDecoration(color: pizza?Colors.black : Colors.white,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/pizza.png",height: 50,width: 50, fit: BoxFit.cover,color: pizza?Colors.white:Colors.black,),
                ) ,
                           ),
             ),
          ],);
  }
}