import 'package:flutter/material.dart';
import 'package:stick_lib/pages/sl_creator_page.dart';
import 'package:stick_lib/pages/sl_home_page.dart';
import 'package:stick_lib/pages/sl_pack_page.dart';
import 'package:stick_lib/pages/sl_profile_page.dart';
import 'package:stick_lib/pages/sl_sessions.page.dart';
import 'classes/sessions.dart';

void main() {
  Sessions.MOCK_load(false);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Sessions.hasAccount() ? '/' : '/sessions',
    routes: {
      '/': (context) => SlHomePage(),
      '/sessions': (context) => SlSessionsPage(),
      '/profile': (context) => SlProfilePage(),
      '/creator': (context) => SlCreatorPage(),
      '/pack': (context) => SlPackPage(),
    },
  ));
}
