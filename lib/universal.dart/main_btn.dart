import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:bat_foundation/universal.dart/text_widget.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.onTap, required this.label});
  final void Function() onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: TextWidget(
              text: label,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
