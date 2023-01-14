import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnDemandCarouselDemo extends StatelessWidget {
  const OnDemandCarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OnDemandCarouselDemo')),
      body: CarouselSlider.builder(
        itemCount: 100,
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
        itemBuilder: (ctx, index, realIdx) {
          return Text(index.toString());
        },
      ),
    );
  }
}
