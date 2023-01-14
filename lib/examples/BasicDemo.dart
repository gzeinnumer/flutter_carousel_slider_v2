import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: const Text('BasicDemo')),
      body: CarouselSlider(
        options: CarouselOptions(),
        items: list
            .map(
              (item) => Container(
                color: Colors.green,
                child: Center(child: Text(item.toString())),
              ),
            )
            .toList(),
      ),
    );
  }
}
