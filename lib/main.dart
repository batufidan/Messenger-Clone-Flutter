import 'package:flutter/material.dart';
import 'package:mesenger_clone/screens/contacs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger | Batuhan Fidan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: ContactsScreen(),
    );
  }
}
