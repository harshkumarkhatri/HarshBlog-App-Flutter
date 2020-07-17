import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:harshblog_webview/main.dart';
import 'about_me.dart';
import 'package:harshblog_webview/screens/videos.dart';
import 'package:harshblog_webview/screens/video_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final widgetOptions = [
    MyApp(),
    AboutMe(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harsh Blog'),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), title: Text('Blogs')),
          BottomNavigationBarItem(
              icon: Icon(Icons.info), title: Text('About')),
          BottomNavigationBarItem(
              icon: Icon(Icons.youtube_searched_for), title: Text('Youtube')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}