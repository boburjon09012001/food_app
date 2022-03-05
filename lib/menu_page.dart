import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:curved_navigation_bar/curved_navigation_bar.dart";

import 'package:main_page_app/pages/recipe_for1.dart';


class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  List<Recipe> list = [
    Recipe("assets/images/burger.png", "Burger"),
    Recipe("assets/images/coffe.png", "Burger"),
    Recipe("assets/images/pizzalittle.png", "Burger"),
  ];

  @override
  _MenuPageState createState() => _MenuPageState();
}

bool isButtonPressed = false;

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.blueAccent,
              items: <Widget>[
                Icon(Icons.home_outlined, size: 30),
                Icon(Icons.favorite_outline, size: 30),
                Icon(Icons.local_grocery_store_outlined, size: 30),
                Icon(Icons.chat_outlined, size: 30),
                Icon(Icons.person_outline, size: 30),
              ],
              onTap: (index) {
                // setState(() {
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=> NextPage() ));
                // });
              },
            ),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Stack(
                  children: <Widget>[
                    myCard(),
                    Container(
                      margin:
                          EdgeInsets.only(top: 101.0, left: 14.0, right: 14.0),
                      height: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/images/banner.png"),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(
                          height: 35.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(26, 86.0, 0.0, 0.0),
                              child: Text(
                                "Paket Cheese \nBurger komplit",
                                style: TextStyle(
                                  fontSize: 21.0,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0.0),
                                child: Container(
                                    height: 35.0,
                                    margin: EdgeInsets.only(
                                        left: 0.0, right: 0.0, top: 10.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.redAccent),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  side: BorderSide(
                                                      color:
                                                          Colors.redAccent)))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MenuPage()));
                                      },
                                      child: Text(
                                        "Order Now",
                                        style: TextStyle(
                                          fontFamily: 'mont',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40.0,
                      margin: EdgeInsets.only(top: 261.0),
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      height: 130.0,
                      margin: EdgeInsets.only(top: 301.0),
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: <Widget>[
                          rasmCard(Recipe("assets/images/burger.png", "Burger"),
                              context),
                          rasmCard(Recipe("assets/images/coffe.png", "Coffe"),
                              context),
                          rasmCard(
                              Recipe("assets/images/pizzalittle.png", "Pizza"),
                              context),
                        ],
                      ),
                    ),
                    Container(
                      height: 40.0,
                      margin: EdgeInsets.only(top: 461.0),
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text(
                        "Popular Now",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      height: 195.0,
                      margin: EdgeInsets.only(top: 501.0),
                      padding: EdgeInsets.only(left: 20.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [


                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Card(
                              elevation: 50,
                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SizedBox(
                                width: 152.0,
                                height: 195.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/foodbig.png"),
                                    Text("Beef Burger",
                                      style: TextStyle(
                                          fontSize: 19.0
                                      ),
                                    ),
                                    Text("Mcdi",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text("Rp. 20.000"),
                                  ],
                                ),
                              ),
                            ),
                          ),




                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Card(
                              elevation: 50,
                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SizedBox(
                                width: 152.0,
                                height: 195.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        child: Image.asset("assets/images/burgernew.png"),
                                      height: 110,
                                    ),
                                    Text("Beef Burger",
                                      style: TextStyle(
                                          fontSize: 11.0
                                      ),
                                    ),
                                    Text("Mcdi",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.grey
                                      ),
                                    ),
                                    Text("Rp. 20.000"),
                                  ],
                                ),
                              ),
                            ),
                          ),


                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Card(
                              elevation: 50,
                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SizedBox(
                                width: 152.0,
                                height: 195.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/burger2.png"),
                                    Text("Beef Burger",
                                    style: TextStyle(
                                      fontSize: 19.0
                                    ),
                                    ),
                                    Text("Mcdi",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                        color: Colors.grey
                                      ),
                                    ),
                                    Text("Rp. 20.000"),
                                  ],
                                ),
                              ),
                            ),
                          ),







                        ],
                      ),
                    ),
                    Container(
                      height: 40.0,
                      margin: EdgeInsets.only(top: 751.0),
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),





                    Container(
                      height: 190.0,
                      margin: EdgeInsets.only(top: 800.0, bottom: 30.0),
                      padding: EdgeInsets.only(left: 20.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [


                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Card(

                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: SizedBox(
                                width: 270.0,
                                height: 153.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/bnew.png"),

                                  ],
                                ),
                              ),
                            ),
                          ),




                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Card(
                              elevation: 50,
                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SizedBox(
                                width: 270.0,
                                height: 153.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset("assets/images/lnew.png",
                                      fit: BoxFit.cover,
                                      ),
                                      height: 110,
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),


                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Card(
                              elevation: 50,
                              shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SizedBox(
                                width: 270.0,
                                height: 153.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/pnew.png"),

                                  ],
                                ),
                              ),
                            ),
                          ),







                        ],
                      ),
                    ),













                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget myCard() {
    return Card(
      elevation: 10.0,
      child: Container(
        height: 87.0,
        color: Color(0xFFFAFAFA),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20.0, left: 24.0),
              child: Image.asset(
                "assets/images/burger1.png",
                width: 40.0,
                height: 40.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 4.0),
              child: Text(
                "NeedFood",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 21.0,
                ),
              ),
            ),
            SizedBox(
              width: 160.0,
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: SizedBox(
                width: 44.0,
                height: 44.0,
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rasmCard(Recipe recipe, context) {
    return Container(
      margin: EdgeInsets.only(left: 8.0),
      child: Card(
        elevation: 30,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          width: 106.0,
          height: 108.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(recipe.imageURL),
              Text(recipe.name),
            ],
          ),
        ),
      ),
    );
  }
}
