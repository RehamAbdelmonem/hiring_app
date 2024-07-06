
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class SalaryField extends StatefulWidget {
  const SalaryField({
    super.key,
  });

  @override
  State<SalaryField> createState() => _SalaryFieldState();
}

class _SalaryFieldState extends State<SalaryField> {
   int _salary = 1000;

  void _increaseSalary() {
    setState(() {
      _salary += 1000;
    });
  }

  void _decreaseSalary() {
    setState(() {
      if (_salary >= 1000) {
        _salary -= 1000;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Salary',
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
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(left: 62.0, right: 62),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _decreaseSalary,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.minus,
                        color: AppColors.primaryColor,
                        size: 11,
                        weight: 5,
                      ),
                    ),
                  ),
                   Text(
                    'SAR $_salary',
                    style: Styles.appBarStyle,
                  ),
                  GestureDetector(
                    onTap: _increaseSalary,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.plus,
                        color: AppColors.primaryColor,
                        size: 11,
                        weight: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
