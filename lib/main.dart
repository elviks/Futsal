import 'package:flutter/material.dart';
import 'package:futsalapp/pages/auth%20page/login_page.dart';
import 'package:futsalapp/pages/auth%20page/register_page.dart';
import 'package:futsalapp/pages/onboard/pagecontrol.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pagecontrol(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
