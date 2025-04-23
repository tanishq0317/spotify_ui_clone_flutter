import 'package:flutter/material.dart';
//import 'package:spotify_clone_2/BottomNav.dart';
import 'package:spotify_clone_2/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Clone',
      theme: ThemeData.dark(),
      home: Dashboard(),
    );
  }
}
