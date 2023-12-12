import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Education',
          style: TextStyle(fontSize: height * 0.02),
        ),
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.red,
            size: height * 0.03,
          ),
          title: Text(
            'Sindh Madrassatul Islam University',
            style: TextStyle(color: Colors.black, fontSize: height * 0.02),
          ),
          subtitle: Text(
            'Computer Science Present(2.9CGPA)',
            style: TextStyle(color: Colors.black, fontSize: height * 0.015),
          ),
          trailing: Text(
            'June 2024',
            style: TextStyle(fontSize: height * 0.015, color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.red,
            size: height * 0.03,
          ),
          title: Text(
            'Bel College',
            style: TextStyle(color: Colors.black, fontSize: height * 0.02),
          ),
          subtitle: Text(
            'HSC-Pre-Engineering - A grade',
            style: TextStyle(color: Colors.black, fontSize: height * 0.015),
          ),
          trailing: Text(
            '21/5/2021',
            style: TextStyle(fontSize: height * 0.015, color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.red,
            size: height * 0.03,
          ),
          title: Text(
            'Elysium School System',
            style: TextStyle(color: Colors.black, fontSize: height * 0.02),
          ),
          subtitle: Text(
            'Matric - A one',
            style: TextStyle(fontSize: height * 0.015, color: Colors.black),
          ),
          trailing: Text(
            '21/3/2019',
            style: TextStyle(fontSize: height * 0.015, color: Colors.black),
          ),
        )
      ]),
    );
  }
}
