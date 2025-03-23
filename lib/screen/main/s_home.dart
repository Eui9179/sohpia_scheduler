import 'package:flutter/material.dart';
import 'package:sophia_scheduler/screen/main/header/f_header.dart';
import 'package:sophia_scheduler/screen/main/staff/f_staff_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // HeaderFrame(),
          Flexible(child: StaffListFrame())
        ],
      ),
    );
  }
}
