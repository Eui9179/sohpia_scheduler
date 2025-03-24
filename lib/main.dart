import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:sophia_scheduler/screen/main/s_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DesktopWindow.setWindowSize(Size(1600, 900)); // 가로 사이즈, 세로 사이즈 기본 사이즈 부여
  DesktopWindow.setMinWindowSize(Size(1600, 900)); // 최소 사이즈 부여
  DesktopWindow.setMaxWindowSize(Size(1600, 900));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("4월"),
      ),
      body: HomeScreen(),
    );
  }
}
