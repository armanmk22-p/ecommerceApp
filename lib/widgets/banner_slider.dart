
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/app_colors.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.8);
    return  Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
              controller: controller,
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Container(
                    color: Colors.red,
                    height: 200,
                  ),
                );
              })),
        ),
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              expansionFactor: 4,
              dotHeight: 10,
              dotWidth: 10,
              dotColor: Colors.white,
              activeDotColor: AppColors.blueIndicator,
            ),
          ),
        )
      ],
    );
  }
}
