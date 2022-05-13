import 'package:flutter/material.dart';

import 'homescreen.dart';

class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: [
          new Expanded(child: new Image(image: AssetImage('assets/food.jpeg'),
            fit: BoxFit.fill,),),
          Padding(padding: EdgeInsets.all(20.0)),
          new Center(
            child:new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text('Start cooking',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,),),
                new Text('Let s join our communuty' ,style: TextStyle(color: Colors.grey),),
                new Text('to cook better food !',style: TextStyle(color: Colors.grey),),

              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(20.0)),
          // onPressed ==> navigation between screens
          FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomeScreen()),);
          }, child: Container(
            width: 400.0,
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.green
            ),
            child: new Text('Get Started',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0),
              textAlign: TextAlign.center,),
          )
          )
        ],
      ),

    );
  }
}
