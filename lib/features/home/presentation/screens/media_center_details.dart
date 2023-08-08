import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';

class MediaCenterDetails extends StatefulWidget {
  const MediaCenterDetails({super.key});

  @override
  State<MediaCenterDetails> createState() => _MediaCenterDetailsState();
}

class _MediaCenterDetailsState extends State<MediaCenterDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/events.jpg"),
                    fit: BoxFit
                        .fill, // You can choose how the image fits inside the container
                  ),
                ),
              ),
              const SizedBox(
                height: 300,
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * .55,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    TextWidget(
                      text:
                          "BATN foundation wins award of\nrecognition and appreciation\nfrom Lagos State government",
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [TextWidget(text: "Wed 20th July, 2023")],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
