import 'package:flutter/material.dart';

import '../widgets/imagepreview.dart';

class Expenseapp extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/ex0.jpeg',
    'assets/images/ex1.jpg',
    'assets/images/ex2.jpg',
  ];

  Expenseapp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Application',
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
