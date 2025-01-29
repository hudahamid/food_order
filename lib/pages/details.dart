 import 'package:flutter/material.dart';
import 'package:food_order/widget/widget_support.dart';

 class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0) ,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
         children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined ,color: Colors.black,),
            ),
            Image.asset("images/salad2.png",width: MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/2.5 ,fit:BoxFit.fill,),
            SizedBox(height: 15.0,),
            Row(
             
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mediterarean",style: AppWidget.SemiBoldTextFieldStyle(),),
                     Text("Chickpea salad",style: AppWidget.boldTextFieldStyle(),),
                  ],
                ),
                Spacer(),
                 Container(  
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                 child: Icon(Icons.remove,color: Colors.white,),
                ), 
                SizedBox(width: 10.0,),
                Text("1",style: AppWidget.SemiBoldTextFieldStyle(),),
               SizedBox(width: 10.0,),
                Container(  
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                 child: Icon(Icons.add,color: Colors.white,),
                ),
              ],
            ),
        ],)
        ,),
    );
  }
}