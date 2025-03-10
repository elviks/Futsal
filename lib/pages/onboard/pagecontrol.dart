import 'package:flutter/material.dart';
import 'package:futsalapp/components/arrow_button.dart';
import 'package:futsalapp/components/my_text_button.dart';
import 'package:futsalapp/pages/onboard/page1.dart';
import 'package:futsalapp/pages/onboard/page2.dart';
import 'package:futsalapp/pages/onboard/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pagecontrol extends StatelessWidget {
  Pagecontrol({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    void arrowButtonPress() {
      if (_controller.page!.toInt() < 2) {
        // If not on the last page, move to the next page
        _controller.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        Navigator.pushNamed(context, '/login');
      }
    }

    void onSkipPress() {
      Navigator.popAndPushNamed(context, '/login');
    }

    return Scaffold(
      backgroundColor: Color(0xff41965F),
      // backgroundColor: Color(0xffa3c662),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/logo/logo2.png",
                width: 150,
              ),
              SizedBox(
                height: 600,
                child: PageView(
                  controller: _controller,
                  children: [
                    Page1(),
                    Page2(),
                    Page3(),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.white, activeDotColor: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextButton(
                      ontap: onSkipPress,
                      text: 'Skip',
                    ),
                    ArrowButton(
                      ontap: arrowButtonPress,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
