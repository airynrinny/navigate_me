import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:navigate_me/User/cafe/Navigation/lvl2/CafeIiibf.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl2/CafeIiibfLib.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl2/CafeIat.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl2/CafePostgrad.dart';
import 'package:navigate_me/User/cafe/Navigation/lvl2/CafeMph.dart';

import 'pickUrDest1.dart';
import 'pickUrDest3.dart';
import 'pickUrDest4.dart';
import 'pickUrDest5.dart';

class PickUrDest2Page extends StatefulWidget {
  const PickUrDest2Page({super.key});
  @override
  State<PickUrDest2Page> createState() => _PickUrDest2Page();
}

class _PickUrDest2Page extends State<PickUrDest2Page> {
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
                                    'Block D: Pick Your Destination - Level 2',
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
                                      'lib/Images/blockd/lvl2/iiibf/5.png',
                                  description: 'IIiBF',
                                  url: 'https://www.example.com/1',
                                  destination: CafeIiibfPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl2/iiibflib/6.png',
                                  description: 'IIiBF Library',
                                  url: 'https://www.example.com/1',
                                  destination: CafeIiibfLibPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl2/iat/11.png',
                                  description: 'IAT',
                                  url: 'https://www.example.com/1',
                                  destination: CafeIatPage(),
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
                                  imagePath:
                                      'lib/Images/blockd/lvl2/postgrad/14.png',
                                  description: 'Postgraduate',
                                  url: 'https://www.example.com/1',
                                  destination: CafePostgradPage(),
                                ),
                              ),
                              Expanded(
                                child: ImageDesc(
                                  imagePath:
                                      'lib/Images/blockd/lvl2/mph/15.png',
                                  description: 'KICT MPH',
                                  url: 'https://www.example.com/1',
                                  destination: CafeMphPage(),
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
