import 'package:flutter/material.dart';
// import 'dart:io';
//import 'dart:ui';
//import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Image.asset('images/starting-point.jpg',
            height: 200, fit: BoxFit.cover),
        //Divider or Spacer
        SizedBox(height: 100),
        Cafe(),
        //Row of images
      ]),
    ));
  }
}

class HeaderPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 200, child: Image.asset('images/starting-point.jpg')),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 200,
          ),
        ),
      ],
    );
  }
}

class Cafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.asset(
          'images/cafe.png', width: 150, // Set the width of each image
          height: 150, // Set the height of each image
          fit: BoxFit.cover, // Adjust the fit as needed),
        ),
      ),
    ]);
  }
}
