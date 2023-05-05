import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 70,
      color: Color(0xff189393),
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
           Icon(Icons.link,color: Colors.white),
           SizedBox(width: 15.0),
           Text('Link Demand Notice',style: TextStyle(
             fontWeight: FontWeight.bold,
             color: Colors.white,
             fontSize: 16,
           ),),
      ],
      ),
    );
  }
}

