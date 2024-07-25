// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_app/view/widgets/chips.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Skills', style: TextStyle(fontSize: height * 0.02)),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_eZGSBU1hRJ.json',
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                controller: _controller, onLoaded: (compose) {
              _controller
                ..duration = compose.duration
                ..forward()
                ..repeat();
            }),
            ExpansionTile(
              title: Text('Flutter Developer',
                  style: TextStyle(
                      fontSize: height * 0.02, color: Colors.orange.shade800)),
              children: [
                Container(
                  child: const Wrap(
                    spacing: 5.0,
                    runSpacing: 3.0,
                    children: <Widget>[
                      Filterchipwidget(
                          Chipname: 'Proficiency in attractive UI'),
                      Filterchipwidget(Chipname: 'Firebase integration'),
                      Filterchipwidget(Chipname: 'Push notification'),
                      Filterchipwidget(Chipname: 'Hive'),
                      Filterchipwidget(Chipname: 'Provider'),
                      Filterchipwidget(
                          Chipname:
                              'User authentication with Google, Facebook'),
                      Filterchipwidget(Chipname: 'Cloud Firestore'),
                      Filterchipwidget(Chipname: 'Getx State Management'),
                      Filterchipwidget(Chipname: 'RestfulApis'),
                      Filterchipwidget(Chipname: 'OOP Concept'),
                    ],
                  ),
                ),
              ],
            ),
            // ExpansionTile(
            //   title: Text('SEO Content Writer',
            //       style: TextStyle(
            //           fontSize: height * 0.02, color: Colors.orange.shade800)),
            //   children: <Widget>[
            //     Container(
            //       child: const Wrap(
            //         spacing: 5.0,
            //         runSpacing: 3.0,
            //         children: <Widget>[
            //           Filterchipwidget(
            //               Chipname: 'High-Quality SEO Friendly Content'),
            //           Filterchipwidget(Chipname: 'Optimize Content'),
            //           Filterchipwidget(Chipname: 'Proofreading & Editing'),
            //           Filterchipwidget(Chipname: 'Keyword Research'),
            //           Filterchipwidget(Chipname: 'Audience Catching Content'),
            //           Filterchipwidget(Chipname: 'Informative content'),
            //           Filterchipwidget(Chipname: 'Blogspost'),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // ExpansionTile(
            //   title: Text('Networking',
            //       style: TextStyle(
            //           fontSize: height * 0.02, color: Colors.orange.shade800)),
            //   children: [
            //     Container(
            //       child: const Wrap(
            //         spacing: 5.0,
            //         runSpacing: 3.0,
            //         children: <Widget>[
            //           Filterchipwidget(Chipname: 'CCNA'),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            ExpansionTile(
              title: Text('Languages',
                  style: TextStyle(
                      fontSize: height * 0.02, color: Colors.orange.shade800)),
              children: [
                Container(
                  child: const Wrap(
                    spacing: 5.0,
                    runSpacing: 3.0,
                    children: <Widget>[
                      Filterchipwidget(Chipname: 'C'),
                      Filterchipwidget(Chipname: 'Dart'),
                      Filterchipwidget(Chipname: 'Java'),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
