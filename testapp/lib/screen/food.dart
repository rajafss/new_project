
// get data from place holder json
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
 class FoodList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FoodListState();
  }
  Future<List> getData()async{
   http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
   return json.decode(response.body);
  }
 }
 class FoodListState extends State<FoodList>{
  List data = [
   {

   }
  ];
  List textData = [
   {
    'title' : 'recipe food',
   }
  ];
  void getMyData() async{
   var foodList = FoodList();
   data = await foodList.getData();
   print(data[2]);
   setState(() {
     textData = data;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new AppBar(
      backgroundColor: Colors.green,
     ),
     body: new SingleChildScrollView(
      child: new Column(
       children: [
        new Center(
         child:  new RaisedButton(onPressed: getMyData,child: new Text('Click me'),),
        ),

        new Center(
         child:  new Text('${textData[0]['title']}'),
        ),
        new Center(
         child:  new Text('${textData}'),
        ),

       ],
      ),

     ),
    );
  }

 }