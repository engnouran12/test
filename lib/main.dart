

import 'package:flutter/material.dart';

import 'Jobs_feature/Presentation/UI/Wedgets/bottom_navigation.dart';

import 'core/services/services_locator.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  

  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sh3all',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavigation());
  }
}
