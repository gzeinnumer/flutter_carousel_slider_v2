import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NoCenterDemo extends StatelessWidget {
  const NoCenterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: const Text('NoCenterDemo')),
      body: CarouselSlider(
        options: CarouselOptions(
          disableCenter: true,
        ),
        items: list
            .map(
              (item) => Container(
                color: Colors.green,
                child: Text(item.toString()),
              ),
            )
            .toList(),
      ),
    );
  }
}
