import 'package:flutter/material.dart';
import 'package:portfolio_app/view/grid/home/homescreen.dart';
import 'package:portfolio_app/view/dashboard/icons.dart';

class Smallicons extends StatelessWidget {
  const Smallicons({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(left: height * 0.04, top: height * 0.02),
      child: Column(
        children: [
          // const IconWidget(text: 'far', icon: Icons.email),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, top: 10),
            child: IconWidget(text: '03000025868', icon: Icons.phone),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, top: 10),
            child: IconWidget(
                text: 'Karachi,Pakistan', icon: Icons.location_city_outlined),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, top: 10),
            child: IconWidget(
                text: 'Cross Platform Developer', icon: Icons.phone_android),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.1, right: width * 0.2, top: height * 0.02),
            child: SizedBox(
              height: height * 0.05,
              width: width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Gridview()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.02)),
                    backgroundColor: const Color.fromARGB(255, 255, 136, 0)),
                child: Text(
                  'Proceed Next',
                  style:
                      TextStyle(fontSize: height * 0.02, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
