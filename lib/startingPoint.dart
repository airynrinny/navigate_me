import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavigateMe',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'NavigateMe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        toolbarHeight: 241.6,
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'images/starting_point.png',
                width: 1366,
                height: 241.6,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 650,
              top: 65.5,
              child: Text(
                'NavigateMe',
                style: TextStyle(
                  fontSize: 44,
                  fontFamily: 'Montserrat',
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Pick your starting point',
                            style: const TextStyle(
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                color: Colors.teal)),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Image.asset(
                          'images/cafe.png',
                          width: 200,
                          height: 241.6,
                          fit: BoxFit.cover,
                        ),
                        Text('KICT Cafeteria',
                            style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'DM Sans',
                                color: Colors.black)),
                        TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor:
                                    const Color.fromARGB(0, 128, 128, 128),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24))),
                            onPressed: () {},
                            child: Text('Start'))
                      ])
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/block_d.jpg',
                        width: 200,
                        height: 241.6,
                        fit: BoxFit.cover,
                      ),
                      Text('Block D',
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              color: Colors.black)),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor:
                                  const Color.fromARGB(0, 128, 128, 128),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                          onPressed: () {},
                          child: Text('Start'))
                    ],
                  )
                ])),
      ),
    );
  }
}
