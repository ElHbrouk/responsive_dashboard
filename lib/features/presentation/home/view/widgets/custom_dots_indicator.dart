import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect: const ExpandingDotsEffect(
        dotHeight: 10.0,
        dotWidth: 10.0,
      activeDotColor: Color(0xff4eb7f2),
      ),
      controller: controller,
      
      count: 3,
    );
  }
}
