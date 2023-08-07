import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';

class AboutUsTabPage extends StatelessWidget {
  const AboutUsTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
      child: ListView(
        children: const [
          Row(
            children: [
              TextWidget(
                text: "About BATNF",
                fontSize: 25.89,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          TextWidget(
            text:
                'The BATN Foundation was established in 2002 as an independent charity. The Foundation\'s primary objective is to advance sustainable agriculture and rural development in Nigeria by empowering smallholder farmers, who constitute the majority of the rural population, by fostering economically, technically, and environmentally sustainable practices that improve their livelihoods.',
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              TextWidget(
                text: 'Our Strategy',
                fontSize: 25.89,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          TextWidget(
            text:
                'Empowering rural farmers make the transition from subsistence to sustainable commercial agriculture. With our assistance, farmers have the chance to support themselves by engaging in agricultural practices that are more effective, efficient, ecologically friendly, and thus more long-term sustainable.',
          ),
          SizedBox(
            height: 20,
          ),
          TextWidget(
            text: 'Discover more on our website at',
            fontSize: 18,
          )
        ],
      ),
    );
  }
}
