import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppBar(
              backgroundColor: Colors.purpleAccent,
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
                ),
              )
            ),
            Icon(
              Icons.person,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: 'Helvetica'
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'College',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Helvetica'
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'No. of Attended Events',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Helvetica'
              ),
              textAlign: TextAlign.center,
            )
          ]
        )
      ),
    );
  }
}