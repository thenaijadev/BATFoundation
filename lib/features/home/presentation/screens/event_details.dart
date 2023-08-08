import 'package:bat_foundation/universal.dart/main_btn.dart';
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
                      text: "Global Standardization",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(
                      text:
                          "Capacity building trains farmers on agricultural practices for maximum yield, involving both participating and non-participating farmers in the project locality. (Still maintain video on app)",
                      fontSize: 18,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.calendar_month),
                        TextWidget(text: "Date")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextWidget(text: "Thursday, July 20, 2023"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.access_time_filled_rounded),
                        TextWidget(text: "Time")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextWidget(text: "11:00 AM"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.location_on),
                        TextWidget(text: "Venue")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextWidget(text: "HQ Ikeja Lagos"),
                    const SizedBox(
                      height: 50,
                    ),
                    MainButton(onTap: () {}, label: "Register")
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
