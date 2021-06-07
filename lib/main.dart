import 'package:flutter/material.dart';

//Components
import 'package:designcodeapp/screens/sidebar_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SidebarScreen(), //replace Container widget
      ),
    );
  }
}





