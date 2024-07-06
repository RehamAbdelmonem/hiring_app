
import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.buttonText, this.buttonWidth = 350,  this.buttonHeight=60, required this.onTap,
  });

  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final void Function()  onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12)),
          child: Text(buttonText, style: Styles.textStyle18),
        ),
      ),
    );
  }
}
