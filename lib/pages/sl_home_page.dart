import 'package:flutter/material.dart';
import 'package:stick_lib/classes/constants.dart';
import 'package:stick_lib/widgets/sl_nav_bar.dart';

class SlHomePage extends StatefulWidget {
  const SlHomePage({Key? key}) : super(key: key);

  @override
  _SlHomePageState createState() => _SlHomePageState();
}

class _SlHomePageState extends State<SlHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsLight.ACCENTBACKDROP,
        onPressed: () {
          Navigator.pushNamed(context, '/creator');
        },
      ),
      backgroundColor: ColorsLight.MAINBACKDROP,
      body: Column(
        children: [
          SlNavBar(
            leftAct: 'menu',
            rightAct: 'profile',
            leftActHandle: () {
              Navigator.pushNamed(context, '/menu');
            },
            rightActHandle: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
    );
  }
}
