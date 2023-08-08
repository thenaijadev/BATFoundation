import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:bat_foundation/features/home/presentation/widgets/project_items_list.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/cupertino.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Events",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
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
        const ProjectItemsList()
      ],
    );
  }
}
