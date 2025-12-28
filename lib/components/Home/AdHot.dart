import 'package:flutter/material.dart';

class AdHot extends StatefulWidget {
  AdHot({Key? key}) : super(key: key);

  @override
  _AdHotState createState() => _AdHotState();
}

class _AdHotState extends State<AdHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      alignment: Alignment.center,
      height: 200,
      child: Text("热门",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}