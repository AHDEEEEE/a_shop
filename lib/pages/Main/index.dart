import 'package:flutter/material.dart';

class MianPage extends StatefulWidget {
  MianPage({Key? key}) : super(key: key);

  @override
  _MianPageState createState() => _MianPageState();
}

class _MianPageState extends State<MianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页"),centerTitle: true,),
      body: Center(child: Text("首页")),
    );
  }
}