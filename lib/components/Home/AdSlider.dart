import 'package:flutter/material.dart';

class AdSlider extends StatefulWidget {
  AdSlider({Key? key}) : super(key: key);

  @override
  _AdSliderState createState() => _AdSliderState();
}

class _AdSliderState extends State<AdSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
       height: 300,
       alignment: Alignment.center,
       child: Text("广告轮播",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}