import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screen/home/constant.dart';
import 'package:testapp/screen/food.dart';
import 'package:testapp/screen/home/screen.dart';

void main() async{
// var foodList = FoodList();
// List data = await foodList.getData();
// print('title : ${data[3]['title']}');
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food App',
      theme: new ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme:GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: FoodList(),
    );
  }

}