// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_app/view/personalprojects/catalog.dart';

import '../widgets/imagepreview.dart';

class Posapp extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/1.jpeg',
    'assets/images/2.jpg',
    'assets/images/3.0.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/5.jpeg',
    'assets/images/7.jpeg',
    'assets/images/8.jpeg',
    'assets/images/9.jpeg',
    'assets/images/10.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pos Application',
            style: TextStyle(fontSize: height * 0.02)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ImagePreview(imagePath: imagePaths[index]),
                      ),
                    );
                  },
                  child: Image.asset(imagePaths[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
