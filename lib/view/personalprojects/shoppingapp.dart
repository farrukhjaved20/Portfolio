import 'package:flutter/material.dart';
import 'package:portfolio_app/view/personalprojects/catalog.dart';
import 'package:portfolio_app/view/widgets/imagepreview.dart';

class ShoppingApp extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/shop1.jpeg',
    'assets/images/shop2.jpg',
    'assets/images/shop3.jpg',
    'assets/images/shop4.jpg',
    'assets/images/shop5.jpg',
    'assets/images/shop7.jpg',
    'assets/images/shop8.jpg',
  ];

  ShoppingApp({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Application',
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
