import 'dart:math';

import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:bat_foundation/features/home/presentation/widgets/carousel_cards.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutUsTabPage extends StatefulWidget {
  const AboutUsTabPage({Key? key}) : super(key: key);

  @override
  State<AboutUsTabPage> createState() => _AboutUsTabPageState();
}

class _AboutUsTabPageState extends State<AboutUsTabPage> {
  static const cards = [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselCard(icon: Icons.bolt_outlined, label: 'Power'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselCard(icon: Icons.bolt_outlined, label: 'Power'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselCard(icon: Icons.bolt_outlined, label: 'Power'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselCard(icon: Icons.bolt_outlined, label: 'Power'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselCard(icon: Icons.bolt_outlined, label: 'Power'),
    ),
  ];
  final carouselController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Change to SingleChildScrollView
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        child: Column(
          // Wrap everything in a Column
          children: [
            const Row(
              children: [
                TextWidget(
                  text: "About BATNF",
                  fontSize: 25.89,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const TextWidget(
              text:
                  'The BATN Foundation was established in 2002 as an independent charity. The Foundation\'s primary objective is to advance sustainable agriculture and rural development in Nigeria by empowering smallholder farmers, who constitute the majority of the rural population, by fostering economically, technically, and environmentally sustainable practices that improve their livelihoods.',
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                TextWidget(
                  text: 'Our Strategy',
                  fontSize: 25.89,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const TextWidget(
              text:
                  'Empowering rural farmers make the transition from subsistence to sustainable commercial agriculture. With our assistance, farmers have the chance to support themselves by engaging in agricultural practices that are more effective, efficient, ecologically friendly, and thus more long-term sustainable.',
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                TextWidget(
                  text: "Discover more on our website at",
                  fontSize: 18,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Image.asset("assets/images/arrow_right.png"),
                  const SizedBox(
                    width: 14,
                  ),
                  const TextWidget(
                    color: Color(0xFF083379),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    text: "www.batnf.com",
                  ),
                ],
              ),
            ),
            const TextWidget(
              fontSize: 16,
              height: 1.65,
              fontWeight: FontWeight.w300,
              text: 'Follow us across our social media pages for updates',
            ),
            const SizedBox(
              height: 16,
            ),

            // Rest of your UI code...
            const SizedBox(height: 16),
            Row(
              children: [
                Image.asset("assets/images/facebook.png"),
                const SizedBox(width: 25),
                Image.asset("assets/images/twitter.png"),
                const SizedBox(width: 25),
                Image.asset("assets/images/insta.png"),
                const SizedBox(width: 25),
                Image.asset("assets/images/youtube.png"),
                const SizedBox(width: 25),
                Image.asset("assets/images/linkedin.png"),
                const SizedBox(width: 25),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                TextWidget(
                  text: "Impact",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300, // Adjust the height as needed
              child: ExpandablePageView.builder(
                controller: carouselController,
                clipBehavior: Clip.none,
                itemCount: cards.length,
                itemBuilder: (_, index) {
                  if (!carouselController.position.haveDimensions) {
                    return const SizedBox();
                  }
                  return AnimatedBuilder(
                    animation: carouselController,
                    builder: (_, __) => Transform.scale(
                      scale: max(
                        0.8,
                        (1 - (carouselController.page! - index).abs() / 2),
                      ),
                      child: cards[index],
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: carouselController,
              count: 5,
              axisDirection: Axis.horizontal,
              effect: const SwapEffect(
                  spacing: 8.0,
                  radius: 100.0,
                  dotWidth: 15.0,
                  dotHeight: 15.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: AppColors.primary),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
