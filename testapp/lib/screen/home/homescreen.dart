import 'package:flutter/material.dart';
import 'package:testapp/screen/food.dart';

import '../decription.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Food> foodList = [
      Food('assets/food.jpeg', 'salade', 'food recipe'),
      Food('assets/eat.jpeg', 'fruit', 'Drink'),
      Food('assets/eat.jpeg', 'Pankake', 'food 60 mins'),
      Food('assets/eat.jpeg', 'Pankake', 'food 60 mins'),
      Food('assets/eat.jpeg', 'Pankake', 'food 60 mins'),
      Food('assets/eat.jpeg', 'Pankake', 'food 60 mins'),

    ];

    return Scaffold(
      body: Column(
        children: [
          new Padding(padding: EdgeInsets.all(12.0)),
          new Container(
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade100),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  showSearch(context: context, delegate: CustomSearchDelegate());
                }, icon: Icon(Icons.search)),
              new Text('Search',style: TextStyle(color: Colors.black26,fontSize: 16)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                new Text('Category',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight:FontWeight.bold),),
              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0)),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                                 Radius.circular(30),
                                ),
                               color: Colors.green
                             ),
                            child: FlatButton (onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>  FoodList()),);
                                },
                              child: new Text('All',style: TextStyle(
                                  color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
                             padding: EdgeInsets.all(12.0),
                    ),
                    ),
                    ),
                  Padding(padding: EdgeInsets.all(12.0)),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.grey.shade50
                      ),
                      child: FlatButton (onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  FoodList()),);
                      },
                        child: new Text('Food',style: TextStyle(
                            color: Colors.black26,fontSize: 16),textAlign: TextAlign.center,),
                        padding: EdgeInsets.all(12.0),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0)),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.grey.shade50
                      ),
                      child: FlatButton (onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  FoodList()),);
                      },
                        child: new Text('Drink',style: TextStyle(
                            color: Colors.black26,fontSize: 16),textAlign: TextAlign.center,),
                        padding: EdgeInsets.all(12.0),
                      ),
                    ),
                  ),

                ],
            ),
          ) ,
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          new Container(
            decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 4.0, color: Colors.green),
            ),
          ),
          ),
          Expanded(
            child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 2 / 2,
                      ),
                  itemCount: foodList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      child: new Column(
                        children: [
                          GestureDetector(
                            child: new Image(
                              image: new AssetImage('${foodList[index].image}'),
                              height: 150,
                              width: 180,

                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>  DetailScreen(food: foodList[index],)),);
                            },
                          ),
                          new Text('${foodList[index].title}',
                            style: TextStyle(fontSize:18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade900),),

                          new Text('${foodList[index].description}',
                            style: TextStyle(fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),),


                        ],
                      ),
                    );
                  }),
          ),
    ],
      ),

      // Container(
          //   child: GridView.builder(
          //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //           maxCrossAxisExtent: 300,
          //           childAspectRatio: 2 / 2,
          //           crossAxisSpacing: 4,
          //           mainAxisSpacing: 50),
          //       itemCount: foodList.length,
          //       itemBuilder: (BuildContext ctx, index) {
          //         return Container(
          //
          //           child: new Column(
          //             children: [
          //               GestureDetector(
          //                 child: new Image(
          //                   image: new AssetImage('${foodList[index].image}'),
          //                   height: 150,
          //                   width: 150,
          //
          //                 ),
          //                 onTap: (){
          //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  DetailScreen(food: foodList[index],)),);
          //                 },
          //               ),
          //               new Text('${foodList[index].title}',
          //                 style: TextStyle(fontSize:10.0,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.blueGrey.shade900),),
          //
          //               new Text('${foodList[index].description}',
          //                 style: TextStyle(fontSize: 12.0,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.blueGrey),),
          //
          //
          //             ],
          //           ),
          //         );
          //       }),
          // ),





      // SingleChildScrollView(          //scroll view
      //   padding: EdgeInsets.all(10.0),
      //   child: Container(
      //     child: new Column(
      //       children: [
      // new Padding(padding: EdgeInsets.only(top: 20.0)),
      // new Container(
      //   margin: EdgeInsets.all(12.0),
      //   padding: EdgeInsets.all(13.0),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.all(
      //         Radius.circular(30),
      //       ),
      //       color: Colors.blueGrey.shade50
      //   ),
      //   child: new Row(
      //     children: [
      //       Icon(Icons.search,color: Colors.black26,semanticLabel: 'search',),
      //       Padding(padding: EdgeInsets.only(left: 10.0,top: 10.0)),
      //       new Text('Search',style: TextStyle(color: Colors.black26),)
      //     ],
      //   ),
      // ),
      // new Row(
      //     children: [
      //       new Text('Category',
      //         style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 20.0,
      //         fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
      //   ]
      // ),
      // new Padding(padding: EdgeInsets.all(10.0)),
      // Row(
      //    children: [
      //      Expanded(
      //        child: Container(
      //        decoration: BoxDecoration(
      //            borderRadius: BorderRadius.all(
      //              Radius.circular(30),
      //            ),
      //            color: Colors.green
      //        ),
      //        child: FlatButton (onPressed: (){
      //          Navigator.push(context, MaterialPageRoute(builder: (context)=>  FoodList()),);
      //        },child: new Text('All',style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
      //          padding: EdgeInsets.all(12.0),
      //        ),
      //      ),
      //      ) ,
      //      new Padding(padding: EdgeInsets.all(12.0)),
      //      Expanded(
      //        child: Container(
      //        decoration: BoxDecoration(
      //            borderRadius: BorderRadius.all(
      //              Radius.circular(30),
      //            ),
      //            color: Colors.blueGrey.shade50
      //        ),
      //        child: FlatButton (onPressed: (){},
      //          child: new Text('Food',style: TextStyle(color: Colors.black12,fontSize: 16),textAlign: TextAlign.center,),
      //        padding: EdgeInsets.all(12.0),
      //      ),
      //        )
      //      ) ,
      //      new Padding(padding: EdgeInsets.all(12.0)),
      //      Expanded(child: Container(
      //        decoration: BoxDecoration(
      //            borderRadius: BorderRadius.all(
      //              Radius.circular(40),
      //            ),
      //            color: Colors.blueGrey.shade50
      //        ),
      //        child: FlatButton (onPressed: (){},child:new Text('Drink',style: TextStyle(color: Colors.black12,fontSize: 16),textAlign: TextAlign.center,),
      //        padding: EdgeInsets.all(12.0),
      //      ),
      //      )
      //      ),
      //    ]
      // ) ,
      // new Padding(padding: EdgeInsets.all(8.0)),
      // new Container(
      //   decoration: BoxDecoration(
      //   border: Border(
      //     top: BorderSide(width: 4.0, color: Colors.green),
      //   ),
      // ),
      // ),


                  //   Row(
                  //   children: [
                  //     new Expanded(
                  //       child: new Column(
                  //         children: [
                  //           Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(40.0),
                  //             ),
                  //             clipBehavior: Clip.antiAliasWithSaveLayer,
                  //             child: new Image(
                  //               image: new AssetImage('${foodList[index].image}'),
                  //               height: 150.0,
                  //               width: 200.0,
                  //             ),
                  //           ),
                  //           new Row(
                  //             children: [
                  //               new Container(
                  //                 child: new Text('${foodList[index].title}',
                  //                   style: TextStyle(fontSize: 20.0,
                  //                       fontWeight: FontWeight.bold,
                  //                       color: Colors.blueGrey.shade900),),
                  //               ),
                  //             ],
                  //           ),
                  //           new Row(
                  //             children: [
                  //               new Container(
                  //                 child: new Text('${foodList[index].description}',
                  //                   style: TextStyle(fontSize: 16.0,
                  //                       color: Colors.black26),),
                  //               ),
                  //             ],
                  //           )
                  //
                  //         ],
                  //
                  //       ),
                  //     ),
                  //     new Padding(padding: EdgeInsets.all(12.0)),
                  //     new Expanded(
                  //       child: new Column(
                  //         children: [
                  //           Container(
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(40.0),
                  //             ),
                  //             clipBehavior: Clip.antiAliasWithSaveLayer,
                  //             child: new Image(
                  //               image: new AssetImage('assets/bbc.jpeg'),
                  //               height: 150.0,
                  //               width: 200.0,
                  //             ),
                  //           ),
                  //           new Row(
                  //             children: [
                  //               new Container(
                  //                 child: new Text('Pankake',
                  //                   style: TextStyle(fontSize: 20.0,
                  //                       fontWeight: FontWeight.bold,
                  //                       color: Colors.blueGrey.shade900),),
                  //               ),
                  //             ],
                  //           ),
                  //           new Row(
                  //             children: [
                  //               new Container(
                  //                 child: new Text('Food -> 60 mins',
                  //                   style: TextStyle(fontSize: 16.0,
                  //                       color: Colors.black26),),
                  //               ),
                  //             ],
                  //           )
                  //
                  //         ],
                  //
                  //       ),
                  //     ),
                  //   ],
                  //
                  // );

                // ]



        //   ),
        // ),
        // ),
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
class CustomSearchDelegate extends SearchDelegate {

  @override
  List<String> searchTerms = [
    'fruit',
    'salade',
    'pankake',
    'hmberger'
  ];

  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () {
        query = '';
      },
          icon: Icon(Icons.clear))

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      close(context, null);
    },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
        itemBuilder: (Contex,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
        });
  }

  }






class Food{

  final String image;
  final String title;
  final String description;

  const Food(this.image,this.title,this.description);


}




// Row(
//  children: [
//    new Expanded(
//      child: new Column(
//        children: [
//          Container(
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(40.0),
//            ),
//            clipBehavior: Clip.antiAliasWithSaveLayer,
//            child: Stack(
//              children:[
//                new Image(
//                  image: new AssetImage('assets/eat.jpeg'),
//                  height: 150.0,
//                  width: 200.0,
//                ),
//              ]
//            ),
//          ),
//          new Row(
//            children: [
//              new Container(
//                child: new Text('Pankake',
//                  style: TextStyle(fontSize: 20.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.blueGrey.shade900),),
//              ),
//            ],
//          ),
//          new Row(
//            children: [
//              new Container(
//                child: new Text('Food -> 60 mins',
//                  style: TextStyle(fontSize: 16.0,
//                      color: Colors.black26),),
//              ),
//            ],
//          )
//        ],
//
//      ),
//    ),
//    new Padding(padding: EdgeInsets.all(12.0)),
//    new Expanded(
//      child: new Column(
//        children: [
//          Container(
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(40.0),
//            ),
//            clipBehavior: Clip.antiAliasWithSaveLayer,
//            child: new Image(
//              image: new AssetImage('assets/foodsalade.jpeg'),
//              height: 150.0,
//              width: 200.0,
//            ),
//          ),
//          new Row(
//            children: [
//              new Container(
//                child: new Text('Pankake',
//                  style: TextStyle(fontSize: 20.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.blueGrey.shade900),),
//              ),
//            ],
//          ),
//          new Row(
//            children: [
//              new Container(
//                child: new Text('Food -> 60 mins',
//                  style: TextStyle(fontSize: 16.0,
//                      color: Colors.black26),),
//              ),
//            ],
//          )
//        ],
//
//      ),
//    ),
//  ],
//
// ),
// Row(
//   children: [
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/eat.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//         ],
//
//       ),
//     ),
//     new Padding(padding: EdgeInsets.all(12.0)),
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/golden.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//         ],
//
//       ),
//     ),
//   ],
//
// ),
// Row(
//   children: [
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/food.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//
//         ],
//
//       ),
//     ),
//     new Padding(padding: EdgeInsets.all(12.0)),
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/eat.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//
//         ],
//
//       ),
//     ),
//   ],
//
// ),
// Row(
//   children: [
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/eat.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//         ],
//
//       ),
//     ),
//     new Padding(padding: EdgeInsets.all(12.0)),
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/foodsalade.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//         ],
//
//       ),
//     ),
//   ],
//
// ),
// Row(
//   children: [
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/cake.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//
//         ],
//
//       ),
//     ),
//     new Padding(padding: EdgeInsets.all(12.0)),
//     new Expanded(
//       child: new Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40.0),
//             ),
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: new Image(
//               image: new AssetImage('assets/bbc.jpeg'),
//               height: 150.0,
//               width: 200.0,
//             ),
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Pankake',
//                   style: TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey.shade900),),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Container(
//                 child: new Text('Food -> 60 mins',
//                   style: TextStyle(fontSize: 16.0,
//                       color: Colors.black26),),
//               ),
//             ],
//           )
//
//         ],
//
//       ),
//     ),
//   ],
//
// ),