import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Checkbox(
            activeColor: AppColors.primaryColor,
            value: value,
            onChanged: (bool? newValue) {
              setState(() {
                value = newValue ?? false;
              });
            },
          ),
          const Text(
            'Remember me',
            style: Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}
