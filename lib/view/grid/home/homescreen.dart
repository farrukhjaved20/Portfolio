// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:portfolio_app/view/grid/about.dart';
import 'package:portfolio_app/view/grid/education.dart';
import 'package:portfolio_app/view/grid/links.dart';
import 'package:portfolio_app/view/grid/logout.dart';
import 'package:portfolio_app/view/grid/project.dart';
import 'package:portfolio_app/view/grid/skills.dart';
import 'package:portfolio_app/view/widgets/dashboardcard.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: TextStyle(fontSize: height * 0.02),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              children: [
                DashboardCard(
                  icon: Icons.person,
                  text: 'About me',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
                  },
                ),
                DashboardCard(
                  icon: Icons.bar_chart_outlined,
                  text: 'Education',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Education()));
                  },
                ),
                DashboardCard(
                  icon: Icons.work_history,
                  text: 'Projects',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Projects()));
                  },
                ),
                DashboardCard(
                  icon: Icons.star,
                  text: 'Skills',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Skills()));
                  },
                ),
                DashboardCard(
                  icon: Icons.link_sharp,
                  text: 'Profile Links',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Links()));
                  },
                ),
                DashboardCard(
                    icon: Icons.logout,
                    text: 'Logout',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Logout()));
                    }),
              ]),
        ),
      ),
    );
  }
}
