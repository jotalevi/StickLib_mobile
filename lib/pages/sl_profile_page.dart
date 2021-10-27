import 'package:flutter/material.dart';
import 'package:stick_lib/classes/constants.dart';
import 'package:stick_lib/classes/sessions.dart';
import 'package:stick_lib/widgets/sl_editable_text.dart';
import 'package:stick_lib/widgets/sl_nav_bar.dart';

class SlProfilePage extends StatefulWidget {
  const SlProfilePage({Key? key}) : super(key: key);

  @override
  _SlProfilePageState createState() => _SlProfilePageState();
}

class _SlProfilePageState extends State<SlProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLight.MAINBACKDROP,
      body: Column(
        children: [
          SlNavBar(
            leftAct: 'back',
            rightAct: 'none',
            leftActHandle: () {
              Navigator.pop(context);
            },
            rightActHandle: () {},
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: ColorsLight.SECONDARY,
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    color: ColorsLight.PRIMARY,
                    size: 150,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
          ),
          SlEditableText(
            text: Sessions.userObj.userName,
          ),
        ],
      ),
    );
  }
}
