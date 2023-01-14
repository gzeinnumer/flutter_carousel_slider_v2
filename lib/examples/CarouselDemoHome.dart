import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider_v2/DemoItem.dart';
import 'package:flutter_carousel_slider_v2/main.dart';

class CarouselDemoHome extends StatelessWidget {
  const CarouselDemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselDemoHome'),
        actions: [
          IconButton(
            icon: const Icon(Icons.nightlight_round),
            onPressed: () {
              themeMode.value = themeMode.value == 1 ? 2 : 1;
            },
          )
        ],
      ),
      body: ListView(
        children: const <Widget>[
          DemoItem('BasicDemo', '/basic'),
          DemoItem('NoCenterDemo', '/nocenter'),
          DemoItem('ImageSliderDemo', '/image'),
          DemoItem('ComplicatedImageDemo', '/complicated'),
          DemoItem('EnlargeStrategyDemo', '/enlarge'),
          DemoItem('ManuallyControlledSlider', '/manual'),
          DemoItem('NoonLoopingDemo', '/noloop'),
          DemoItem('VerticalSliderDemo', '/vertical'),
          DemoItem('FullscreenSliderDemo', '/fullscreen'),
          DemoItem('CarouselWithIndicatorDemo', '/indicator'),
          DemoItem('OnDemandCarouselDemo', '/ondemand'),
          DemoItem('PrefetchImageDemo', '/prefetch'),
          DemoItem('CarouselChangeReasonDemo', '/reason'),
          DemoItem('KeepPageviewPositionDemo', '/position'),
          DemoItem('MultipleItemDemo', '/multiple'),
          DemoItem('EnlargeStrategyZoomDemo', '/zoom'),
        ],
      ),
    );
  }
}
