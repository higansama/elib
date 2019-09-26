import 'package:elibunikomskripsi/downloaded/Downloaded.dart' as prefix0;
import 'package:flutter/material.dart';
import './Downloaded/Downloaded.dart';
import './FileCloud/FileCloud.dart';
import './Profile/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    FileCloud(),
    Downloaded(),
    Profile(),
  ];
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          primary: true,
          backgroundColor: Colors.white,
          title: Text(
            "Elib Unikom",
            style: TextStyle(color: Colors.black87),
          ),
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.youtube_searched_for),
              title: Text('File'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download),
              title: Text('Downloaded'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
