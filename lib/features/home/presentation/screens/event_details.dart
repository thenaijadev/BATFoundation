import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
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
              const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.arrow_back),
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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: ListView(
                  children: const [
                    TextWidget(
                      text:
                          "BATN foundation wins award of recognition and appreciation from Lagos State government.",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextWidget(
                          text: "Wed 20th July, 2023",
                          fontSize: 12,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      text:
                          "Capacity building trains farmers on agriculturalpractices for maximum yield, involving bothparticipating and non-participating farmers in the project locality. (Still maintain video on app) Lorem ipsum dolor sit amet consectetur. Volutpat mattis habitasse nunc vulputate ut risus dictum dui. Purus vivamus ut sed orci pellentesque. Mattis ac faucibus platea id quisque. Lorem condimentum vulputate in eget mi blandit nisi mauris.",
                      fontSize: 18,
                      textAlign: TextAlign.start,
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
