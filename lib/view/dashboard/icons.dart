import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.03, top: height * 0.01),
      child: Row(
        children: [
          Icon(icon, size: height * 0.03),
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text(
              text,
              style: TextStyle(fontSize: height * 0.02, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
