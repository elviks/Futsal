import 'package:flutter/material.dart';
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
        '/home': (context) => HomePage(),
      },
    );
  }
}
