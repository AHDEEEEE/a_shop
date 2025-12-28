import 'package:flutter/material.dart';

class AdSuggestion extends StatefulWidget {
  AdSuggestion({Key? key}) : super(key: key);

  @override
  _AdSuggestionState createState() => _AdSuggestionState();
}

class _AdSuggestionState extends State<AdSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
         color: Colors.blue,
         alignment: Alignment.center,
         height: 300,
         child: Text("推荐",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    );
  }
}