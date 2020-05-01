import 'package:covidapp/pages/controller_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF473F97)
  ));
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ControllerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}