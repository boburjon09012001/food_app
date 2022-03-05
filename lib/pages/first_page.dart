import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_page_app/pages/search_page.dart';
import 'package:main_page_app/pages/second_page.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return Container(
                width: 40.0,
                height: 40.0,
                padding: EdgeInsets.all(10.0),
                child: Image.asset("assets/images/burgerlittle.png"),
              );
            },
          ),
          title: const Text('NeedFood'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
                icon: const Icon(Icons.search_sharp),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('You want to search!'),
                         action: SnackBarAction(
                           label: "OK",
                           onPressed: (){
                             setState(() {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
                             });

                           },
                         ),
                      ));
                },
              ),
            ),

          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 24.0, top: 30.0),
                width: 380.0,
                height: 355.0,
                padding: EdgeInsets.all(10.0),
                child: Image.asset("assets/images/header.png"),
              ),

              SizedBox(
                height: 40.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 35.0,),

                width: 410.0,
                height: 100.0,
                child:   Row(
                  children: <Widget>[
                    Text("Pilih menu \nfavoritemu",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3.0,
                        fontFamily: 'mont',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 35.0,),

                width: 410.0,
                height: 100.0,
                child:   Row(
                  children: <Widget>[
                    Text("Ada banyak jenis makanan \nyang tersedia disini",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:FontWeight.w600,
                        letterSpacing: 1.0,
                        fontFamily: 'mont',
                        color: Color(0xFF6D6D6D),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(
            icon: const Icon(Icons.keyboard_arrow_right,
              size: 35.0,
            ),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return SecondPage();
                },
              ));
            },
          ),
          onPressed: (){
            debugPrint("Floating Actiob button bosildi");
          },

        ),
      ),
    );
  }
}
