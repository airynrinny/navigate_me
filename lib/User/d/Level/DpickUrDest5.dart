import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:navigate_me/User/d/Level/DPickUrDest1.dart';
import 'package:navigate_me/User/d/Level/DPickUrDest2.dart';
import 'package:navigate_me/User/d/Level/DPickUrDest3.dart';
import 'package:navigate_me/User/d/Level/DPickUrDest4.dart';

import 'package:navigate_me/User/d/Navigation/lvl5/DConfRoom.dart';
import 'package:navigate_me/User/d/Navigation/lvl5/DGenOffice.dart';

class DDestLvl5 extends StatefulWidget {
  const DDestLvl5({super.key});
  @override
  State<DDestLvl5> createState() => _DDestLvl5Page();
}

class _DDestLvl5Page extends State<DDestLvl5> {
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
                                    'Block D: Pick Your Destination - Level 5',
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
                                  imagePath: 'lib/Images/blockd/lvl5/cr/11.png',
                                  description: 'Conference Room',
                                  url: 'https://www.example.com/1',
                                  destination: DConfRoomPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath: 'lib/Images/blockd/lvl5/go/11.png',
                                  description: 'Female Student Lounge',
                                  url: 'https://www.example.com/1',
                                  destination: DGenOfficePage(),
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
