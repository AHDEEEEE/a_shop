import 'package:flutter/material.dart';

class AdCategory extends StatefulWidget {
  AdCategory({Key? key}) : super(key: key);

  @override
  _AdCategoryState createState() => _AdCategoryState();
}

class _AdCategoryState extends State<AdCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 80,
            height: 100,
            color: Colors.blue[200],
            child: Text(
              "分类${index}",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
          );
        },
      ),
    );
  }
}
