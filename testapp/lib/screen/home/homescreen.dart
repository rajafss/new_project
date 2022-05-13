import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(          //scroll view
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: [
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(13.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.blueGrey.shade50
              ),
              child: new Row(
                children: [
                  Icon(Icons.search,color: Colors.black26,semanticLabel: 'search',),
                  Padding(padding: EdgeInsets.only(left: 10.0,top: 10.0)),
                  new Text('Search',style: TextStyle(color: Colors.black26),)
                ],
              ),
            ),
            new Row(
                children: [
                  new Text('Category',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
              ]
            ),
            new Padding(padding: EdgeInsets.all(10.0)),
            Row(
               children: [
                 Expanded(child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(
                         Radius.circular(30),
                       ),
                       color: Colors.green
                   ),
                   child: new Text('All',style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
                   padding: EdgeInsets.all(12.0),
                 ),) ,
                 new Padding(padding: EdgeInsets.all(12.0)),
                 Expanded(child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(
                         Radius.circular(30),
                       ),
                       color: Colors.blueGrey.shade50
                   ),
                   child: new Text('Food',style: TextStyle(color: Colors.black12,fontSize: 16),textAlign: TextAlign.center,),
                   padding: EdgeInsets.all(12.0),
                 ),) ,
                 new Padding(padding: EdgeInsets.all(12.0)),
                 Expanded(child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(
                         Radius.circular(40),
                       ),
                       color: Colors.blueGrey.shade50
                   ),
                   child: new Text('Drink',style: TextStyle(color: Colors.black12,fontSize: 16),textAlign: TextAlign.center,),
                   padding: EdgeInsets.all(12.0),
                 ),) ,
               ]
            ) ,
            new Padding(padding: EdgeInsets.all(8.0)),
            new Container(
              decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 4.0, color: Colors.green),
              ),
            ),
            ),
            Row(
             children: [
               new Expanded(
                 child: new Column(
                   children: [
                     new Image(
                       image: new AssetImage('assets/eat.jpeg'),
                       height: 200.0,
                       width: 200.0,
                     ),
                     new Row(
                       children: [
                         new Container(
                           child: new Text('Pankake',
                             style: TextStyle(fontSize: 20.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.blueGrey.shade900),),
                         ),
                       ],
                     ),
                     new Row(
                       children: [
                         new Container(
                           child: new Text('Food -> 60 mins',
                             style: TextStyle(fontSize: 16.0,
                                 color: Colors.black26),),
                         ),
                       ],
                     )
                   ],

                 ),
               ),
               new Padding(padding: EdgeInsets.all(12.0)),
               new Expanded(
                 child: new Column(
                   children: [
                     new Image(
                       //parte importante, definire gli asset per trovarli più velocemnte
                       //si inseriscono nel pubspec.yaml
                       image: new AssetImage('assets/food.jpeg'),
                       height: 200.0,
                       width: 200.0,
                     ),
                     new Row(
                       children: [
                         new Container(
                           child: new Text('Pankake',
                             style: TextStyle(fontSize: 20.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.blueGrey.shade900),),
                         ),
                       ],
                     ),
                     new Row(
                       children: [
                         new Container(
                           child: new Text('Food -> 60 mins',
                             style: TextStyle(fontSize: 16.0,
                                 color: Colors.black26),),
                         ),
                       ],
                     )
                   ],

                 ),
               ),
             ],

            ),
            Row(
              children: [
                new Expanded(
                  child: new Column(
                    children: [
                      new Image(
                        //parte importante, definire gli asset per trovarli più velocemnte
                        //si inseriscono nel pubspec.yaml
                        image: new AssetImage('assets/food.jpeg'),
                        height: 200.0,
                        width: 200.0,
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Pankake',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900),),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Food -> 60 mins',
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black26),),
                          ),
                        ],
                      )

                    ],

                  ),
                ),
                new Padding(padding: EdgeInsets.all(12.0)),
                new Expanded(
                  child: new Column(
                    children: [
                      new Image(
                        image: new AssetImage('assets/eat.jpeg'),
                        height: 200.0,
                        width: 200.0,
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Pankake',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900),),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Food -> 60 mins',
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black26),),
                          ),
                        ],
                      )

                    ],

                  ),
                ),
              ],

            ),
            Row(
              children: [
                new Expanded(
                  child: new Column(
                    children: [
                      new Image(
                        //parte importante, definire gli asset per trovarli più velocemnte
                        //si inseriscono nel pubspec.yaml
                        image: new AssetImage('assets/eat.jpeg'),
                        height: 200.0,
                        width: 200.0,
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Pankake',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900),),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Food -> 60 mins',
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black26),),
                          ),
                        ],
                      )

                    ],

                  ),
                ),
                new Padding(padding: EdgeInsets.all(12.0)),
                new Expanded(
                  child: new Column(
                    children: [
                      new Image(
                        //parte importante, definire gli asset per trovarli più velocemnte
                        //si inseriscono nel pubspec.yaml
                        image: new AssetImage('assets/food.jpeg'),
                        height: 200.0,
                        width: 200.0,
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Pankake',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900),),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Food -> 60 mins',
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black26),),
                          ),
                        ],
                      )

                    ],

                  ),
                ),
              ],

            ),
            Row(
              children: [
                new Expanded(
                  child: new Column(
                    children: [
                      new Image(
                        //parte importante, definire gli asset per trovarli più velocemnte
                        //si inseriscono nel pubspec.yaml
                        image: new AssetImage('assets/food.jpeg'),
                        height: 200.0,
                        width: 200.0,
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Pankake',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900),),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Food -> 60 mins',
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black26),),
                          ),
                        ],
                      )

                    ],

                  ),
                ),
                new Padding(padding: EdgeInsets.all(12.0)),
                new Expanded(
                  child: new Column(
                    children: [
                      new Image(
                        //parte importante, definire gli asset per trovarli più velocemnte
                        //si inseriscono nel pubspec.yaml
                        image: new AssetImage('assets/eat.jpeg'),
                        height: 200.0,
                        width: 200.0,
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Pankake',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900),),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Container(
                            child: new Text('Food -> 60 mins',
                              style: TextStyle(fontSize: 16.0,
                                  color: Colors.black26),),
                          ),
                        ],
                      )

                    ],

                  ),
                ),
              ],

            ),
          ],
        ),
        ),
      //  bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.green,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

      ),

  );

  }


}