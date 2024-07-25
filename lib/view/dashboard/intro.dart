// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/view/dashboard/dashboard.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Personal Portfolio',
          style: TextStyle(fontSize: height * 0.025),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.08, bottom: 10),
          child: Center(
              child: Text(
            'Flutter Developer',
            style: TextStyle(fontSize: height * 0.03),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: height * 0.15,
            backgroundImage: const AssetImage('assets/images/farrukh.jpg'),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Muhammad Farrukh Javed',
          style: TextStyle(fontSize: height * 0.02),
        ),
        const Expanded(child: Smallicons()),
      ]),
    );
  }
}
