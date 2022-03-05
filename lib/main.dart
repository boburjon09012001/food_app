import 'package:flutter/material.dart';
import 'package:main_page_app/pages/first_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'mont',
      ),
      home:const FirstPage(),
    );
  }
}
