import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pickUrDest2.dart';
import 'pickUrDest3.dart';
import 'pickUrDest4.dart';
import 'pickUrDest5.dart';

import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeGamesMy.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeFemLounge.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeMalLounge.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeOpRoom.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeCita.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeHamzah.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeFemMusolla.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl1/CafeMalMusolla.dart';

class PickUrDest1Page extends StatefulWidget {
  const PickUrDest1Page({super.key});
  @override
  State<PickUrDest1Page> createState() => _PickUrDest1Page();
}

class _PickUrDest1Page extends State<PickUrDest1Page> {
  //final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "lib/Images/pickDestBG.png",
              fit: BoxFit.cover,
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 16.0),
                              Column(
                                children: [
                                  Text(
                                    'Navigate Me',
                                    style: TextStyle(
                                      fontSize: 44,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Cafe: Pick Your Destination - Level 1',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularButton(
                                  context, '1', const PickUrDest1Page()),
                              CircularButton(
                                  context, '2', const PickUrDest2Page()),
                              CircularButton(
                                  context, '3', const PickUrDest3Page()),
                              CircularButton(
                                  context, '4', const PickUrDest4Page()),
                              CircularButton(
                                  context, '5', const PickUrDest5Page()),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/gamesmy/3.png',
                                  description: 'GamesMy',
                                  url: 'https://www.example.com/1',
                                  destination: CafeGamesMyPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/lounge/6.png',
                                  description: 'Female Student Lounge',
                                  url: 'https://www.example.com/1',
                                  destination: CafeFemLoungePage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/lounge/8.png',
                                  description: 'Male Student Lounge',
                                  url: 'https://www.example.com/1',
                                  destination: CafeMalLoungePage(),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageDesc(
                                  imagePath: 'lib/Images/blockd/lvl1/or/7.png',
                                  description: 'Operating Room',
                                  url: 'https://www.example.com/1',
                                  destination: CafeOpRoomPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/cita/12.png',
                                  description: 'CITA',
                                  url: 'https://www.example.com/1',
                                  destination: CafeCitaPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/hamzah/13.png',
                                  description: 'Hamzah Famsuri Resource Centre',
                                  url: 'https://www.example.com/3',
                                  destination: CafeHamzahPage(),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageDesc(
                                    imagePath:
                                        'lib/Images/blockd/lvl1/musolla/13.png',
                                    description: 'Female Musolla',
                                    url: 'https://www.example.com/1',
                                    destination: CafeFemMusollaPage()),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/musolla/15.png',
                                  description: 'Male Musolla',
                                  url: 'https://www.example.com/1',
                                  destination: CafeMalMusollaPage(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CircularButton(
      BuildContext context, String label, Widget destination) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: ElevatedButton(
        onPressed: () {
          print("Button Pressed for $label");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
/*
  Future<void> _showSearchDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Search'),
          content: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Enter your search query...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                String searchQuery = _searchController.text;
                print("Search Button Pressed with query: $searchQuery");
                // Add your search functionality here
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child:
                  const Text('Search', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }*/
}

class ImageDesc extends StatelessWidget {
  final String imagePath;
  final String description;
  final String url;
  final Widget destination;

  const ImageDesc(
      {required this.imagePath,
      required this.description,
      required this.url,
      required this.destination});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () {
            _launchURL(url);
          },
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => destination),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text('Find', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
