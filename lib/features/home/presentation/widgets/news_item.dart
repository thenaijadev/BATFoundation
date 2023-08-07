import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final ImageProvider<Object> image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: title,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 190,
                child: TextWidget(
                  text: subTitle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}