import 'package:flutter/material.dart';

import 'homescreen.dart';

class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image(image: AssetImage('assets/food.jpeg'),
            fit: BoxFit.fill,),),
          Padding(padding: EdgeInsets.all(20.0)),
          Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Start cooking',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,),),
                Text('Let s join our communuty' ,style: TextStyle(color: Colors.grey),),
                Text('to cook better food !',style: TextStyle(color: Colors.grey),),

              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
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
            child: Text('Get Started',
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
