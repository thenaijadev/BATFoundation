import 'package:bat_foundation/features/home/presentation/widgets/menu_item.dart';
import 'package:bat_foundation/router/routes.dart';
import 'package:bat_foundation/universal.dart/image_widget.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool light = true;
  bool? checkBoxValueOne = false;
  bool? checkBoxValueTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const ImageWidget(
                        name: "close.png",
                      ),
                    )
                  ],
                ),
              ),
              MenuItem(
                label: "Change Theme",
                icon: SizedBox(
                  height: 20,
                  width: 38,
                  child: FlutterSwitch(
                    width: 125.0,
                    height: 55.0,
                    valueFontSize: 25.0,
                    toggleSize: 13.0,
                    inactiveToggleColor: const Color.fromARGB(255, 205, 0, 0),
                    activeColor: const Color(0xFF232323),
                    inactiveColor: const Color(0xFFD9D9D9),
                    inactiveSwitchBorder: Border.all(
                      color: const Color(0xFF868FAD),
                    ),
                    toggleBorder: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 9),
                    value: light,
                    borderRadius: 10.0,
                    padding: 2.0,
                    onToggle: (val) {
                      setState(() {
                        light = val;
                      });
                    },
                  ),
                ),
              ),
              const MenuItem(
                label: "Change Password",
                icon: ImageWidget(
                  name: "password_icon.png",
                  width: 30,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.contactUs);
                },
                child: const MenuItem(
                  label: "Contact Us",
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ),
              ),
              const MenuItem(
                label: "Feedback",
                icon: ImageWidget(
                  name: "feedback.png",
                  width: 30,
                ),
              ),
              const MenuItem(
                label: "Logout ",
                icon: ImageWidget(
                  name: "logout.png",
                  width: 30,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Expanded(
                    child: TextWidget(
                        fontSize: 14,
                        text:
                            "To receive our quarterly updates with your \nemail address, sign up for our newsletter."),
                  ),
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                        side: const BorderSide(width: 1, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        value: checkBoxValueOne,
                        onChanged: (val) {
                          setState(() {
                            checkBoxValueOne = val;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
