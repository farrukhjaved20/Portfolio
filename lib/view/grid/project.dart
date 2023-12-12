import 'package:flutter/material.dart';
import 'package:portfolio_app/view/personalprojects/catalog.dart';
import 'package:portfolio_app/view/personalprojects/expesnse.dart';
import 'package:portfolio_app/view/personalprojects/posapp.dart';
import 'package:portfolio_app/view/personalprojects/shoppingapp.dart';
import 'package:portfolio_app/view/widgets/projectscard.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Projects',
          style: TextStyle(fontSize: height * 0.02),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ProjectsCard(
              text: 'Pos App',
              subtitle: 'Functional Scanning App',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Posapp()));
              },
            ),
            ProjectsCard(
              text: 'Expense App ',
              subtitle: 'UI Personal App',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Expenseapp()));
              },
            ),
            ProjectsCard(
              text: 'Catalog App',
              subtitle: 'UI Food App',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Catalogapp()));
              },
            ),
            ProjectsCard(
              text: 'Mini Shopping App',
              subtitle: 'Basic Functional Application',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingApp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
