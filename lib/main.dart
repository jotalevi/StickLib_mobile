import 'package:flutter/material.dart';
import 'package:stick_lib/pages/sl_creator_page.dart';
import 'package:stick_lib/pages/sl_home_page.dart';
import 'package:stick_lib/pages/sl_pack_page.dart';
import 'package:stick_lib/pages/sl_profile_page.dart';
import 'package:stick_lib/pages/sl_sessions.page.dart';
import 'classes/sessions.dart';

void main() {
  Sessions.load();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Sessions.hasAccount() ? '/' : '/sessions',
    routes: {
      '/': (context) => const SlHomePage(),
      '/sessions': (context) => const SlSessionsPage(),
      '/profile': (context) => const SlProfilePage(),
      '/creator': (context) => const SlCreatorPage(),
      '/pack': (context) => const SlPackPage(),
      '/loadLogin': (context) => const SlLoadingLoginPage(),
    },
  ));
}
