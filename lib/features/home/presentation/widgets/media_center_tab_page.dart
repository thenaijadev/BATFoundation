import 'package:bat_foundation/features/home/presentation/widgets/news_item.dart';
import 'package:bat_foundation/features/home/presentation/widgets/see_all_button.dart';
import 'package:flutter/material.dart';

class MediaCenterTabPage extends StatefulWidget {
  const MediaCenterTabPage({super.key});

  @override
  State<MediaCenterTabPage> createState() => _MediaCenterTabPageState();
}

class _MediaCenterTabPageState extends State<MediaCenterTabPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
      child: Column(
        children: [
          const Flexible(
            child: NewsItem(
                image: AssetImage(
                  "assets/images/events.jpg",
                ),
                title: "Farmers Market",
                subTitle:
                    "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          ),
          const Flexible(
            child: NewsItem(
                image: AssetImage(
                  "assets/images/events.jpg",
                ),
                title: "Farmers Market",
                subTitle:
                    "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          ),
          const Flexible(
            child: NewsItem(
                image: AssetImage(
                  "assets/images/events.jpg",
                ),
                title: "Farmers Market",
                subTitle:
                    "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          ),
          SeeAllBtn(
            onTap: () {},
          )
        ],
      ),
    );
  }
}
