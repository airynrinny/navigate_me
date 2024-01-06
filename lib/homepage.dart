import 'package:flutter/material.dart';
// import 'pickUrDest1.dart';
import 'adminHome.dart';
import 'startingPoint.dart';
// import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // Connets your flutter project with firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "images/Homepage.png",
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Navigate Me',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Image.asset(
                    'images/iium_logo.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Welcome to IIUM Gombak Campus Map!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Guest: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Button Pressed - Navigating to PickDest");
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StartingPointPage(),
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text('Start Searching',
                        style: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Admin: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Button Pressed - Sign in for Admin");

                      // Navigate to the adminHome.dart page using the navigator from MaterialApp
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdminHomePage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text('Sign in for Admin',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
