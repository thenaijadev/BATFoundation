import 'package:bat_foundation/features/home/presentation/widgets/news_item.dart';
import 'package:flutter/material.dart';

class ProjectItemsList extends StatelessWidget {
  const ProjectItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          NewsItem(
              textDirection: TextDirection.rtl,
              image: AssetImage(
                "assets/images/events.jpg",
              ),
              title: "Farmers Market",
              subTitle:
                  "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          NewsItem(
              textDirection: TextDirection.rtl,
              image: AssetImage(
                "assets/images/events.jpg",
              ),
              title: "Farmers Market",
              subTitle:
                  "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          NewsItem(
              textDirection: TextDirection.rtl,
              image: AssetImage(
                "assets/images/events.jpg",
              ),
              title: "Farmers Market",
              subTitle:
                  "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          NewsItem(
              textDirection: TextDirection.rtl,
              image: AssetImage(
                "assets/images/events.jpg",
              ),
              title: "Farmers Market",
              subTitle:
                  "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
        ],
      ),
    );
  }
}
