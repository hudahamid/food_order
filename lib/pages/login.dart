import 'package:flutter/material.dart';
class LoGin extends StatefulWidget {
  const LoGin({super.key});

  @override
  State<LoGin> createState() => _LoGinState();
}

class _LoGinState extends State<LoGin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(  
          children: [
            Container(
              width:MediaQuery.of(context).size.width ,
            height:MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment.topLeft,
                end:Alignment.bottomRight,
              colors: [
             Color(0xFFff5c30),
             Color(0xFFe74b1a),
            ]) ),
            ),

          ],
        ),
      ),
    );
  }
}

