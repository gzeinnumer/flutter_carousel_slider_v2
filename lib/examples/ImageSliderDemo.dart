import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider_v2/main.dart';

class ImageSliderDemo extends StatelessWidget {
  const ImageSliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ImageSliderDemo')),
      body: CarouselSlider(
        options: CarouselOptions(),
        items: imgList
            .map(
              (item) => Container(
                child: Center(child: Image.network(item, fit: BoxFit.cover, width: 1000)),
              ),
            )
            .toList(),
      ),
    );
  }
}
