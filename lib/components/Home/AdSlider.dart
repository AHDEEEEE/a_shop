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
  CarouselSliderController _controller = CarouselSliderController(); //控制轮播图跳转的控制器
  int _currentIndex = 0;
  Widget _getSlider() {
    // 获取屏幕宽度，根据宽度设置图片宽度
    final double screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      carouselController: _controller, //绑定controller对象
      items: List.generate(widget.bannerList.length, (int index) {
        return Image.network(
          widget.bannerList[index].imgUrl,
          fit: BoxFit.cover,
          width: screenWidth,
        );
      }),
      options: CarouselOptions(
        viewportFraction: 1,
        // autoPlay: true,
        // autoPlayInterval: Duration(seconds: 4),
        onPageChanged: (index, reason) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getSlider(), _getSearch(), _getDots()]);

    // return Container(
    //   color: Colors.blue,
    //    height: 300,
    //    alignment: Alignment.center,
    //    child: Text("广告轮播",style: TextStyle(fontSize: 20,color: Colors.white),),
    // );
  }

  Widget _getDots() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.bannerList.length, (int index) {
            return GestureDetector(
              onTap: () {
                _controller.jumpToPage(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: index == _currentIndex ? 40 : 20,
                height: 6,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: index == _currentIndex ?Colors.white :Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

Widget _getSearch() {
  return Positioned(
    top: 10,
    left: 0,
    right: 0,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.4),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          "搜索...",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    ),
  );
}
