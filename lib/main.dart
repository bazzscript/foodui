import 'package:flutter/material.dart';
import 'package:foodui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber.shade800,
        accentColor: Colors.amber.shade800,
        fontFamily: 'Fira Sans',
      ),
      home: HomeScreen(),
    );
  }
}