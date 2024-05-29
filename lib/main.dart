
import 'package:flutter/material.dart';
import 'package:instagram/screens/page1.dart';
import 'package:instagram/screens/page2.dart';
import 'package:instagram/screens/page3.dart';
import 'package:instagram/screens/page4.dart';
import 'package:instagram/screens/page5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _selectedindex = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("appsolute"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.dangerous),
              onPressed: (){
              },
            ),
            IconButton(
              icon: Icon(Icons.cabin),
              onPressed: (){
              },
            )
          ],
        ),
        body: IndexedStack(
          index: _selectedindex,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page5(),
          ],
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedindex,
      onTap: (value) {
        setState(() {
          _selectedindex = value;
        });
        print("value : ${value}");
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.hail),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.leak_add_outlined),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.desktop_access_disabled),
          label: "add_box",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.kayaking_outlined),
          label: "favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.kayaking_sharp),
          label: "message",
        ),
      ],
    );
  }
}