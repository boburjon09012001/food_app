import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset("assets/images/rectangle.png"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
               const   SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/burger1.png",
                        height: 60.0,
                        width: 60.0,
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(4, 25, 4, 0),
                          child: Text(
                            "NeedFood",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 29.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 75.0),

                    height: 100.0,
                    color: const Color(0xFFFAFAFA),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/pizza.png",
                            height: 74.0,
                            width: 74.0,
                          ),
                          padding: EdgeInsets.only(left: 44.0),
                        ),
                        Image.asset(
                          "assets/images/littlefast.png",
                          height: 50.0,
                          width: 50.0,
                        ),
                        Image.asset(
                          "assets/images/salad.png",
                          height: 74.0,
                          width: 74.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(top: 10.0),
                    padding:const EdgeInsets.only(left: 40.0),
                    color: Color(0xFFFAFAFA),
                    height: 60.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                   const     Text(
                          "Sign In",
                          style: TextStyle(
                            fontFamily: "mont",
                            fontWeight: FontWeight.w600,
                            fontSize: 36.0,
                            letterSpacing: 1.0,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0,top: 20.0),
                          child: Image.asset("assets/images/platter.png"),
                        ),
                      ],
                    ),



                  ),

                  Container(
                    margin: EdgeInsets.only(left: 29.0,right: 29.0,top: 31.0,bottom: 10.0),
                    child:const TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 29.0,right: 29.0,),
                    child:const TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter your password",
                        fillColor: Colors.blue,

                      ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(left: 29.0,right: 29.0,top:14.0 ),
                    child:const Text("Forgot password ?",
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "mont",

                    ),
                    )
                  ),
                  Container(

                    width: 380.0,
                    height: 49.0,

                    margin: EdgeInsets.only(left: 29.0,right: 29.0,top: 25.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.blue)
                                )
                            )
                        ),
                      onPressed: (){
                               Navigator.push(context,MaterialPageRoute(builder: (context)=> MenuPage()));
                      },
                      child:const Text("Login",
                      style:const TextStyle(
                        fontFamily: 'mont',
                        fontSize: 24.0,
                        fontWeight: FontWeight.normal,

                      ),
                      ),
                    )
                  ),
                  
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(

                    width: 410.0,
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 30.0,right: 90.0),
                            child: Image.asset("assets/images/fastbig.png")),
                        Container(
                          margin: EdgeInsets.only(bottom: 30.0),
                            child: Image.asset("assets/images/pizza2.png"))
                      ],
                    ),
                  ),
                  Container(

                    width: 410.0,
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 40.0),
                            child: Image.asset("assets/images/salad2.png")),
                        Container(
                            margin: EdgeInsets.only(left: 90.0),
                            child: Image.asset("assets/images/platter2.png"))
                      ],
                    ),
                  ),

                  Container(

                      margin: EdgeInsets.only(left: 29.0,right: 29.0,top:14.0 ),
                      child: Text(" No account yet ?",
                        style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "mont",

                        ),
                      )
                  ),
                  Container(


                      margin: EdgeInsets.only(left: 29.0,right: 29.0,top:14.0,bottom: 40.0 ),
                      child: Text("Sign up now ",
                        style: TextStyle(
                          color: Color(0xFF0072C5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "mont",

                        ),
                      )
                  ),
                  
                  

                ],
              ),
            ],
          ),
        ],
      ),
    ));

  }







}
