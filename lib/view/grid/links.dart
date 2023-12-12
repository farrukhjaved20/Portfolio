// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/view/widgets/linksbutton.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
  Links({super.key});

  final Uri _url = Uri.parse('https://www.linkedin.com/in/farrukhjaved20/');
  final Uri _url1 =
      Uri.parse('https://www.upwork.com/freelancers/~01d6ff7004420d928c');
  final Uri _url2 = Uri.parse('https://sntopics.com/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Links',
          style: TextStyle(fontSize: height * 0.03),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            CircleAvatar(
                radius: height * 0.05,
                backgroundImage: const AssetImage('assets/images/linkin.png')),
            SizedBox(height: height * 0.01),
            Text(
              'Linkedin Profile',
              style: TextStyle(fontSize: height * 0.02),
            ),
            LinksButton(onPressed: _launchUrl),
            SizedBox(height: height * 0.09),
            GestureDetector(
              onTap: () {
                String upworkProfileUrl =
                    'https://www.upwork.com/freelancers/~01d6ff7004420d928c'; // replace with your actual Upwork profile URL
                launch(upworkProfileUrl);
              },
              child: CircleAvatar(
                  radius: height * 0.05,
                  backgroundImage:
                      const AssetImage('assets/images/upwork.png')),
            ),
            SizedBox(height: height * 0.01),
            Text(
              'Upwork Profile',
              style: TextStyle(fontSize: height * 0.02),
            ),
            LinksButton(onPressed: _launchUrl1),
            SizedBox(height: height * 0.09),
            GestureDetector(
              onTap: () {
                String cont =
                    'https://sntopics.com/'; // replace with your actual Upwork profile URL
                launch(cont);
              },
              child: CircleAvatar(
                  radius: height * 0.05,
                  backgroundImage: const AssetImage('assets/images/www.png')),
            ),
            SizedBox(height: height * 0.01),
            Text(
              'My Articles',
              style: TextStyle(
                fontSize: height * 0.02,
              ),
            ),
            LinksButton(onPressed: _launchUrl2),
          ],
        ),
      ),
    );
  }
}
