import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:navigate_me/User/d/Level/DPickUrDest2.dart';
import 'package:navigate_me/User/d/Level/DPickUrDest3.dart';
import 'package:navigate_me/User/d/Level/DPickUrDest4.dart';
import 'package:navigate_me/User/d/Level/DPickUrDest5.dart';

import 'package:navigate_me/User/d/Navigation/lvl1/DGamesMy.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DFemLounge.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DMalLounge.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DOpRoom.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DCITA.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DHamzah.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DFemMusolla.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DMalMusolla.dart';
import 'package:navigate_me/User/d/Navigation/lvl1/DCafe.dart';

class DDestLvl1 extends StatefulWidget {
  const DDestLvl1({super.key});
  @override
  State<DDestLvl1> createState() => _DDestLvl1Page();
}

class _DDestLvl1Page extends State<DDestLvl1> {
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
                      padding: const EdgeInsets.symmetric(horizontal: 0),
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
                                    'Block D: Pick Your Destination - Level 1',
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
                              CircularButton(context, '1', const DDestLvl1()),
                              CircularButton(context, '2', const DDestLvl2()),
                              CircularButton(context, '3', const DDestLvl3()),
                              CircularButton(context, '4', const DDestLvl4()),
                              CircularButton(context, '5', const DDestLvl5()),
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
                                  destination: DGamesMyPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/lounge/6.png',
                                  description: 'Female Student Lounge',
                                  url: 'https://www.example.com/1',
                                  destination: DFemLoungePage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/lounge/8.png',
                                  description: 'Male Student Lounge',
                                  url: 'https://www.example.com/1',
                                  destination: DMalLoungePage(),
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
                                  destination: DOpRoomPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/cita/12.png',
                                  description: 'CITA',
                                  url: 'https://www.example.com/1',
                                  destination: DCitaPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/hamzah/13.png',
                                  description: 'Hamzah Famsuri Resource Centre',
                                  url: 'https://www.example.com/3',
                                  destination: DHamzahPage(),
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
                                    destination: DFemMusollaPage()),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/musolla/15.png',
                                  description: 'Male Musolla',
                                  url: 'https://www.example.com/1',
                                  destination: DMalMusollaPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl1/cafe/15.png',
                                  description: 'KICT Cafeteria',
                                  url: 'https://www.example.com/1',
                                  destination: DCafePage(),
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
