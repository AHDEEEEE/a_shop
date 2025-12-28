import 'package:a_shop/viewmodels/Home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdSlider extends StatefulWidget {
  final List<BannerItem> bannerList;    
  AdSlider({Key? key, required this.bannerList}) : super(key: key);

  @override
  _AdSliderState createState() => _AdSliderState();
}

class _AdSliderState extends State<AdSlider> {
  Widget _getSlider() {
    // 获取屏幕宽度，根据宽度设置图片宽度
    final double screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      items: List.generate(widget.bannerList.length, (int index) {
        return Image.network(
          widget.bannerList[index].imgUrl,
          fit: BoxFit.cover,
          width: screenWidth,
        );
      }),
      options: CarouselOptions(viewportFraction: 1,autoPlay: true,autoPlayInterval: Duration(seconds: 4),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getSlider()]);

    // return Container(
    //   color: Colors.blue,
    //    height: 300,
    //    alignment: Alignment.center,
    //    child: Text("广告轮播",style: TextStyle(fontSize: 20,color: Colors.white),),
    // );
  }
}
