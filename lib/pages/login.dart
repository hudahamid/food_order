import 'package:flutter/material.dart';
import 'package:food_order/widget/widget_support.dart';

class LoGin extends StatefulWidget {
  const LoGin({super.key});

  @override
  State<LoGin> createState() => _LoGinState();
}

class _LoGinState extends State<LoGin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFff5c30),
                        Color(0xFFe74b1a),
                      ])),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                      child: Image.asset("images/logo.png",
                          width: MediaQuery.of(context).size.width / 1.5, fit: BoxFit.cover)),
                  SizedBox(height: 50.0),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20, top: 30, bottom: 30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            style: AppWidget.SemiBoldTextFieldStyle(),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.email_outlined)),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.SemiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.password_outlined)),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot Password ?",
                              style: AppWidget.SemiBoldTextFieldStyle(),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              width: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffff5722),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins1',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 78.0,),
                  Text("Donot have an account ? sign up",style: AppWidget.SemiBoldTextFieldStyle(),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
