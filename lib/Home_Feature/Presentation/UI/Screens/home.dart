import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar with search container
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:  IconButton(icon:  Icon (Icons.menu),
           onPressed: () {  },

            color: Colors.blue,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),
            //size
            fixedSize: MaterialStateProperty.all(const Size.fromHeight(20))


            ) ,
          ),
          actions:  [
           IconButton(
            icon:  const Icon (Icons.notifications_active),
           onPressed: () {  },

            color: Colors.blue,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),
            //size
            fixedSize: MaterialStateProperty.all(const Size.fromHeight(20))


            ) ,
          ),
            SizedBox(
              width: 15,
            ),
          ]),
      //botton navigation bar
      
    );
  }
}
