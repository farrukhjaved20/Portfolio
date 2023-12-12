// ignore_for_file: non_constant_identifier_names, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'About',
            style: TextStyle(fontSize: height * 0.02),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.01),
              child: Text(
                'Would you like to create a robust application? Here I am, Farrukh Javed, a seventh semester student at SMIU and a certified flutter developer from SMIT. I will create user-friendly interactive apps for you. I will create a user-friendly UI for an Hybrid Apps that leverages Firebase as its backend. Whereas,The First Impression Of UI Will Be Beautiful UI To See Screen All Day.',
                style: TextStyle(
                    fontSize: height * 0.02,
                    color: Colors.black.withOpacity(0.5),
                    overflow: TextOverflow.visible),
              ),
            ),
          ],
        ));
  }
}

// const double coverheight = 280;
// Widget Buildcoverimage() => Container(
//       color: Colors.grey,
//       child: Image.asset(
//         'assets/images/cert.jpg',
//         fit: BoxFit.cover,
//         height: coverheight,
//         width: double.infinity,
//       ),
//     );
