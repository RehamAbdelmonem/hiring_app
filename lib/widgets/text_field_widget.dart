import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.fieldText,
      this.fieldIcon,
     this.maxLines,
     this.textfieldHeight = 60});

  final String fieldText;
  final IconData? fieldIcon;
  final int? maxLines;
  final double textfieldHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            fieldText,
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: AppColors.fieldColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            width: 350,
            height: textfieldHeight,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 20),
                suffixIcon: fieldIcon != null
                    ? Icon(
                        fieldIcon,
                        color: AppColors.textColor,
                        size: 18,
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
