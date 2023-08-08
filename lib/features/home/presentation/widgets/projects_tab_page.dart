import 'package:bat_foundation/features/home/presentation/widgets/news_item.dart';
import 'package:bat_foundation/features/home/presentation/widgets/see_all_button.dart';
import 'package:bat_foundation/router/routes.dart';
import 'package:flutter/material.dart';

class ProjectsTabPage extends StatefulWidget {
  const ProjectsTabPage({super.key});

  @override
  State<ProjectsTabPage> createState() => _ProjectsTabPageState();
}

class _ProjectsTabPageState extends State<ProjectsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
      child: Column(
        children: [
          Flexible(
            child: NewsItem(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.projectDetails),
                image: const AssetImage(
                  "assets/images/events.jpg",
                ),
                title: "Farmers Market",
                subTitle:
                    "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          ),
          Flexible(
            child: NewsItem(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.projectDetails),
                image: const AssetImage(
                  "assets/images/events.jpg",
                ),
                title: "Farmers Market",
                subTitle:
                    "Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate"),
          ),
          Flexible(
            child: NewsItem(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.projectDetails),
                image: const AssetImage(
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
