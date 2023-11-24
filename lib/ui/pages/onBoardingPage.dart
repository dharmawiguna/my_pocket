import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_pocket/ui/widget/button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero To Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    "Our system is helping you to\nachieve a better goal",
    "We provide tips for you so that\nyou can adapt easier",
    "We will guide you\nto where you wanted to"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/image_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/image_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/image_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                  height: 331,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  subtitles[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: currentIndex == 2 ? 38 : 50,
                ),
                currentIndex == 2
                    ? Column(
                        children: [
                          CustomFilledButton(
                            title: "Get Started",
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/sign-up", (route) => false);
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextButton(
                            title: "Sign in",
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/sign-in", (route) => false);
                            },
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0
                                    ? blueColor
                                    : lightBackgroundColor),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1
                                    ? blueColor
                                    : lightBackgroundColor),
                          ),

                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2
                                    ? blueColor
                                    : lightBackgroundColor),
                          ),
                          //spacer untuk mengisi ruang yang tersisa
                          const Spacer(),
                          CustomFilledButton(
                            width: 150,
                            title: "Continue",
                            onPressed: () {
                              carouselController.nextPage();
                            },
                          ),
                        ],
                      )
              ]),
            )
          ],
        ),
      ),
    );
  }
}