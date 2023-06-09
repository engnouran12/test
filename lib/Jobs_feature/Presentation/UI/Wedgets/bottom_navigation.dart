import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import '../../../../Home_Feature/Presentation/UI/Screens/home.dart';
import '../../../domain/entities/jobs.dart';

import '../Screens/jobs_screen.dart';
import '../Screens/test.dart';



class BottomNavigation extends StatefulWidget {
  
   BottomNavigation({super.key, });

  @override
 
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
     Jobs? jop;
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomePage(),
      const className( ),
    
    
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          color: (Colors.blue),
          // const Color.fromARGB(255, 0, 23, 63)  ,       
           backgroundColor: Colors.white,
          height: 70.0,
          items: const <Widget>[
            Icon(Icons.home, color: Colors.white, size: 20.0),
               Icon(Icons.work, color: Colors.white, size: 20.0),
            Icon(Icons.chat, color: Colors.white, size: 20.0),
           // Icon(Icons.search, color: Colors.white, size: 20.0),
            Icon(Icons.person_pin, color: Colors.white, size: 20.0),
          ],
          animationDuration: const Duration(milliseconds: 200),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: onTappedBar),
          
    );
  }
}
