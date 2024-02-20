import 'package:flutter/material.dart';
import 'adminLogin.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "lib/Images/Log_In.png",
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
                    'lib/Images/iium_logo.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Admin, Welcome to IIUM Gombak Campus Map!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      print("Button Pressed - Navigating to adminlogin");
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AdminLoginPage(),
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text('Log In',
                        style: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(height: 16.0)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
