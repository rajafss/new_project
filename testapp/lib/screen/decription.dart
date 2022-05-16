import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/screen/home/homescreen.dart';

class DetailScreen extends StatelessWidget {


  final Food food;

  const DetailScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          children: [
            Image(image: AssetImage('${food.image}'),
            width: 400.0,
            height: 400.0,),
            Text(food.title,style: TextStyle(fontSize: 20.0),),
          ],
        ),


      ),
    );
  }
}