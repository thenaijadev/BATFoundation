import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:bat_foundation/features/home/presentation/widgets/news_items_list.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaCenterScreen extends StatefulWidget {
  const MediaCenterScreen({super.key});

  @override
  State<MediaCenterScreen> createState() => _MediaCenterScreenState();
}

class _MediaCenterScreenState extends State<MediaCenterScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(Icons.arrow_back),
                ),
                const Expanded(child: SizedBox()),
                Transform.translate(
                  offset: const Offset(-15, 0),
                  child: const TextWidget(
                    text: "Media Center",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimSearchBar(
                  boxShadow: false,
                  prefixIcon: const Icon(CupertinoIcons.search),
                  onSubmitted: (value) {},
                  width: MediaQuery.of(context).size.width,
                  textController: textController,
                  onSuffixTap: () {
                    setState(() {
                      textController.clear();
                    });
                  },
                )
              ],
            ),
          ],
        ),
        const NewsItemsList()
      ],
    );
  }
}
