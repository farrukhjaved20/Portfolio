import 'package:flutter/material.dart';

import '../widgets/imagepreview.dart';

class Catalogapp extends StatelessWidget {
  Catalogapp({super.key});

  final List<String> imagePaths = [
    'assets/images/11.jpeg',
    'assets/images/22.jpg',
    'assets/images/33.jpg',
    'assets/images/44.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog Application',
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
