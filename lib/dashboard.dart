import 'package:flutter/material.dart';
import 'package:spotify_clone_2/bottom_nav.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNav());
  }
}
