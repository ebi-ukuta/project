import 'package:flutter/material.dart';

class BottomTwo extends StatefulWidget {
  const BottomTwo({Key? key}) : super(key: key);

  @override
  State<BottomTwo> createState() => _BottomTwoState();
}

class _BottomTwoState extends State<BottomTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 70,
      color: Color(0xff189393),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text('+ Business Place',style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),),
        ],
      ),
    );
  }
}

