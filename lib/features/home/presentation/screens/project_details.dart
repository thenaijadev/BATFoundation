import 'dart:math';

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';

import 'package:bat_foundation/features/home/presentation/widgets/carousel_cards.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  static const cards = [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselCard(
        icon: Icons.bolt_outlined,
        label: 'Power',
      ),
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
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/events.jpg"),
                    fit: BoxFit
                        .fill, // You can choose how the image fits inside the container
                  ),
                ),
              ),
              const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.arrow_back),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * .65,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: ListView(
                  children: [
                    const TextWidget(
                      text: "Enterprise development.",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(
                      text:
                          "CThe Enterprise Development Programme (EDP) fosters economic opportunities for rural farmers throughout the value chain. This model offers support to agri-preneurs, enabling them to establish, build, and expand their businesses sustainably. The EDP encompasses both crop and aquaculture farming promotion. (Still maintain video on app)",
                      fontSize: 17,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Image.asset("assets/images/start_icon.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              const TextWidget(
                                text: "Start date",
                                fontSize: 12,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              const TextWidget(
                                text: "End Date",
                                fontSize: 12,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset("assets/images/end_icon.png"),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextWidget(
                          text: "Thu 1st Dec. 2022",
                          fontSize: 12,
                        ),
                        Image.asset("assets/images/arrow.png"),
                        const TextWidget(
                          text: "Sat 10th Dec. 2022",
                          fontSize: 12,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        TextWidget(
                          text: "Lagos",
                          fontSize: 14,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 50,
                      child: TextWidget(
                        text: "Related Projects",
                        fontSize: 20,
                      ),
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
                                0.4,
                                (1 -
                                    (carouselController.page! - index).abs() /
                                        2),
                              ),
                              child: cards[index],
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: carouselController,
                        count: 5,
                        axisDirection: Axis.horizontal,
                        effect: const SwapEffect(
                            spacing: 8.0,
                            radius: 100.0,
                            dotWidth: 10.0,
                            dotHeight: 10.0,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5,
                            dotColor: Colors.grey,
                            activeDotColor: AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 70,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
