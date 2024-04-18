// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'classespage.dart';
import 'informationpage.dart';
import 'profilepage.dart';
import 'sportspage.dart';
import 'welcomepage.dart';

class BuddiesPage extends StatelessWidget {
  const BuddiesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/PaigeProfilePic.png'),
                    ),
                  ),
                  const Text(
                    "Paige's Buddies",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InformationPage(),
                        ),
                      );
                    },
                    icon: Image.asset('images/InfoButtonGOLD.png'),
                    iconSize: 50,
                  ),
                ],
              ),
            ),

          const SizedBox(height: 20),

          _buildBuddyTile(
            imagePath: 'images/mer.png',
            name: 'Meredith Bevill',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          _buildBuddyTile(
            imagePath: 'images/cam.png',
            name: 'Cameron Clark',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          _buildBuddyTile(
            imagePath: 'images/jerome.png',
            name: 'Hoai Nguyen',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          _buildBuddyTile(
            imagePath: 'images/tristan.png',
            name: 'Tristan Bowen',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400], // Set a slightly lighter gray color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              },
              icon: Image.asset('images/HomeIcon.png'),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InformationPage()),
                );
              },
              icon: Image.asset('images/InfoButton.png'),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ClassesPage()),
                );
              },
              icon: Image.asset('images/ClassesIcon.png'),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SportsPage()),
                );
              },
              icon: Image.asset('images/SportsIcon.png'),
              iconSize: 80,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuddyTile({
    required String imagePath,
    required String name,
    required void Function() onPressed,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20.0),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: 130,
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
          onPressed: onPressed,
          icon: Image.asset(imagePath),
          iconSize: 100,
        ),
            Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black, // Adjust text color
            ),
          ),
           IconButton(
          onPressed: onPressed,
          icon: Image.asset('images/location.png'),
          iconSize: 100,
        ),
      ],
    ),
  ),
),
);
}
}

