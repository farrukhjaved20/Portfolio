import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_app/view/dashboard/intro.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
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
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_AMBEWz.json',
                
                controller: _controller, onLoaded: (compose) {
              _controller
                ..duration = compose.duration
                ..forward().then((value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Introduction())));
            })
          ]),
    );
  }
}
