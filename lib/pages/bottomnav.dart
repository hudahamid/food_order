import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_order/pages/home.dart';
import 'package:food_order/pages/profile.dart';
import 'package:food_order/pages/order.dart';
import 'package:food_order/pages/wallet.dart';



class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndexTab=0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  @override
  void initState() {
    // TODO: implement initState
    homepage=Home();
    profile=Profile();
    order=Order();
    wallet=Wallet();
   pages=[homepage,order,profile,wallet];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
                          height: 65,
                          backgroundColor: Colors.white,
                          color: Colors.black,
                          animationDuration: Duration(milliseconds: 500),
                          onTap:(int index){
                          setState(() {
                            currentIndexTab=index;
                          });
                          },
                           items: [
                            Icon(Icons.home_outlined,color: Colors.white,),
                            Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                            Icon(Icons.wallet_outlined,color: Colors.white,),
                            Icon(Icons.person_outlined,color: Colors.white,),

                            ]),
                            body: pages[currentIndexTab],
    );
  }
}