import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          //appBarTheme: AppBarTheme(color: Colors.pink),
          accentColor: Colors.grey,
          primaryColorDark: Color.fromARGB(255, 255, 77, 184),
          scaffoldBackgroundColor: Color.fromARGB(255, 101, 55, 77)),
      home: InputPage(),
    );
  }
}
