import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<Image> imgList = [
  Image.asset('images/solo_leveling.png', fit: BoxFit.fill,),
  Image.asset('images/solo_leveling.png', fit: BoxFit.fill,),
  Image.asset('images/solo_leveling.png', fit: BoxFit.fill,),
  Image.asset('images/solo_leveling.png', fit: BoxFit.fill,),
  Image.asset('images/solo_leveling.png', fit: BoxFit.fill,),
];

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {

  int _current = 0;
  CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Carousel',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                enableInfiniteScroll: false,
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(
                            color: Colors.amber
                        ),
                        child: Image.asset('images/solo_leveling.png', fit: BoxFit.fill,)
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),

          ],
        )
    );
  }
}
