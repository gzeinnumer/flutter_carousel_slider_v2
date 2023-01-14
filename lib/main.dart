import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider_v2/examples/BasicDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/CarouselChangeReasonDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/CarouselDemoHome.dart';
import 'package:flutter_carousel_slider_v2/examples/CarouselWithIndicatorDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/ComplicatedImageDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/EnlargeStrategyDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/EnlargeStrategyZoomDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/FullscreenSliderDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/ImageSliderDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/KeepPageviewPositionDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/ManuallyControlledSlider.dart';
import 'package:flutter_carousel_slider_v2/examples/MultipleItemDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/NoCenterDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/NoonLoopingDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/OnDemandCarouselDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/PrefetchImageDemo.dart';
import 'package:flutter_carousel_slider_v2/examples/VerticalSliderDemo.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

void main() => runApp(const CarouselDemo());

final themeMode = ValueNotifier(2);

class CarouselDemo extends StatelessWidget {
  const CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value],
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (ctx) => const CarouselDemoHome(),
            '/basic': (ctx) => const BasicDemo(),
            '/nocenter': (ctx) => const NoCenterDemo(),
            '/image': (ctx) => const ImageSliderDemo(),
            '/complicated': (ctx) => const ComplicatedImageDemo(),
            '/enlarge': (ctx) => const EnlargeStrategyDemo(),
            '/manual': (ctx) => const ManuallyControlledSlider(),
            '/noloop': (ctx) => const NoonLoopingDemo(),
            '/vertical': (ctx) => const VerticalSliderDemo(),
            '/fullscreen': (ctx) => const FullscreenSliderDemo(),
            '/ondemand': (ctx) => const OnDemandCarouselDemo(),
            '/indicator': (ctx) => const CarouselWithIndicatorDemo(),
            '/prefetch': (ctx) => const PrefetchImageDemo(),
            '/reason': (ctx) => const CarouselChangeReasonDemo(),
            '/position': (ctx) => const KeepPageviewPositionDemo(),
            '/multiple': (ctx) => const MultipleItemDemo(),
            '/zoom': (ctx) => const EnlargeStrategyZoomDemo(),
          },
        );
      },
      valueListenable: themeMode,
    );
  }
}

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
    .toList();
