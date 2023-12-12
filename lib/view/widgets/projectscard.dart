import 'package:flutter/material.dart';

class ProjectsCard extends StatelessWidget {
  final String text;
  final String subtitle;
  final VoidCallback onTap;
  const ProjectsCard(
      {super.key,
      required this.text,
      required this.subtitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: height * 0.01,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.02)),
        child: ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.red,
            size: height * 0.03,
          ),
          title: Text(text,
              style: TextStyle(fontSize: height * 0.02, color: Colors.black)),
          subtitle: Text(subtitle,
              style: TextStyle(fontSize: height * 0.015, color: Colors.black)),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: height * 0.02,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          dense: true,
          enabled: false,
          selected: true,
        ),
      ),
    );
  }
}
