import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../Const/custom_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
   CarouselController carouselController = CarouselController();

  List sliderList = [
    {'id': '1', 'imagepath': 'assets/images/slider/slider1.png'},
    {'id': '2', 'imagepath': 'assets/images/slider/slider1.png'},
    {'id': '3', 'imagepath': 'assets/images/slider/slider1.png'},
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 24),
          //   child: Image.asset(
          //     'assets/images/logo.png',
          //   ),
          // ),
          //leadingWidth: 140,
          title: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 30,
                width: 260,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 13,
                      ),
                      hintText: "Search Products",
                      hintStyle:
                          fontStyle(10, Color(0xffC0BFBF), FontWeight.w400),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 15)),
                ),
              )),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
             IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        
        )
        );
  }
}