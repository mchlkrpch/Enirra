import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import './src/botton-menu.dart' as bm;
import './src/pages/pargraph-page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'Enirra'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Paragraph(
      programId: 'mchlkrpch:0',
      paragraphId: '0'
    ),
    Center(child: Text('Page 2', style: TextStyle(fontSize: 24))),
    Center(child: Text('Page 3', style: TextStyle(fontSize: 24))),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar:
      bm.BottonMenu(index: 0, f: _onItemTapped)
    );
  }
}
