import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class imageStyle {
  late String asset;
  double width = 400;
  double height = 300;
  double padding = 10;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavigateMe',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          toolbarHeight: 241.6,
          flexibleSpace: Stack(
            children: [
              Positioned(
                left: 650,
                top: 65.5,
                child: Text(
                  'NavigateMe',
                  style: TextStyle(
                    fontSize: 44,
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
                padding: EdgeInsets.all(0),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                      padding: const EdgeInsets.all(0),
                      color: Colors.teal,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Starting Point: Block D to Cafe',
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'Montserrat',
                                          color: Colors.black)),
                                ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/1.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Go straight and turn right',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/2.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    'images/blockd-cafe/3.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                      'Go straight until you reach the corner (There is a fire extinguisher)',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/4.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('At the corner, turn right)',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/5.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    'images/blockd-cafe/6.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                      'Go straight until you reach the corner)',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/7.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('At the corner, turn right again)',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/8.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                      'Go straight and turn left when you see the fire extinguisher)',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/9.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Go straight and turn left',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/10.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('And then make a right turn',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/11.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    'images/blockd-cafe/12.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                      'Go straight pass through the glass door until you can see musholla on your right',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/13.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                      'Passing through the musholla, turn right',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/14.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Follow the path and turn left	',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/blockd-cafe/15.png',
                                    width: 200,
                                    height: 241.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('You have arrived!',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          color: Colors.black)),
                                ])
                              ],
                            ),
                          ]))
                ]))),
          ],
        ),
      ),
    );
  }
}
