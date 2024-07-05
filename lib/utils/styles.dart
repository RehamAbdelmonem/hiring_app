import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';

abstract class Styles {

  static const appBarStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );

  static const textStyle12 = TextStyle(
    color: AppColors.textColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );

  static const textStyle16 = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    color: AppColors.secondaryColor,
  );
}
