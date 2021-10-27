import 'package:flutter/material.dart';
import 'package:stick_lib/classes/constants.dart';
import 'package:stick_lib/widgets/sl_session_create.dart';
import 'package:stick_lib/widgets/sl_session_enter.dart';

class SlSessionsPage extends StatefulWidget {
  const SlSessionsPage({Key? key}) : super(key: key);

  @override
  _SlSessionsPageState createState() => _SlSessionsPageState();
}

class _SlSessionsPageState extends State<SlSessionsPage> {
  bool slActionSwitch = false;

  void switchActMode() {
    setState(() {
      slActionSwitch = !slActionSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLight.ACCENTBACKDROP,
      body: slActionSwitch
          ? SlSessionEnterWidget(
              switchActMode: switchActMode,
            )
          : SlSessionCreateWidget(
              switchActMode: switchActMode,
            ),
    );
  }
}
