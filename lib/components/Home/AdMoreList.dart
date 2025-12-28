import 'package:flutter/material.dart';

class AdMoreList extends StatefulWidget {
  AdMoreList({Key? key}) : super(key: key);

  @override
  _AdMoreListState createState() => _AdMoreListState();
}

class _AdMoreListState extends State<AdMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context,int index){
        return Container(
          color: Colors.blue[200],
          alignment: Alignment.center,
          child: Text(
            "商品",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        );
      }
    );
  }
}
