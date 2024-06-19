import 'package:flutter/material.dart';
import 'package:myapp/components/custom_app_bar.dart';
import 'package:myapp/components/custom_app_bottom_bar.dart';
import 'package:myapp/pages/chat_page.dart';
import 'package:myapp/pages/calls_page.dart';
import 'package:myapp/pages/news_page.dart';
import 'package:myapp/pages/tools_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const ChatsPage(),
    const CallsPage(),
    const NewsPage(),
    const ToolsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('WA Business')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomBar(
        onTabChanged: _onItemTapped,
      ),
    );
  }
}