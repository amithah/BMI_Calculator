import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff3A4869),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff161B27),
        ),
      ),
      home: InputPage(),
    );
  }
}
