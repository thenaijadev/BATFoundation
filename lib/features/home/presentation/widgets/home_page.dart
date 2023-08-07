import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:bat_foundation/features/home/presentation/widgets/about_us_tab_page.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/237/200/300"),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            TabBar(
              controller: controller,
              labelPadding: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorColor: AppColors.primary,
              indicatorPadding: const EdgeInsets.all(0),
              tabs: [
                Tab(
                  child: GestureDetector(
                    onTap: () {
                      print("hi");
                    },
                    child: const TextWidget(
                      text: "About Us",
                      fontSize: 14,
                    ),
                  ),
                ),
                const Tab(
                    child: TextWidget(
                  text: "Projects",
                  textAlign: TextAlign.center,
                  fontSize: 14,
                )),
                const Tab(
                    child: TextWidget(
                  text: "Media Center",
                  textAlign: TextAlign.center,
                  fontSize: 14,
                )),
                const Tab(
                    child: TextWidget(
                  text: "Events",
                  fontSize: 14,
                )),
              ],
            ),
            Transform.translate(
              offset: const Offset(0, 70),
              child: SizedBox(
                height: 620,
                child: TabBarView(
                  controller: controller,
                  children: const [
                    AboutUsTabPage(),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
