import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String? title;
  final int index;
  final Color? color;
  const CategoryButton({super.key, this.title, this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 70, padding: const EdgeInsets.symmetric(vertical: 10), margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(8)),
          child: Center(child: Text(title ?? "", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45, fontSize: 12),)),
        ),
        const SizedBox(height: 2,),
        Container(width: 60, height: 2, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),)
      ],
    );
  }
}

class CategoryButtonModel{
  final String buttonTitle;
  CategoryButtonModel(this.buttonTitle);
}
