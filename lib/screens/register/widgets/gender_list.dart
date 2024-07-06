import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class GenderList extends StatefulWidget {
  const GenderList({super.key});

  @override
  State<GenderList> createState() => _GenderListState();
}

class _GenderListState extends State<GenderList> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Gender',
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Radio(
                    activeColor: AppColors.primaryColor,
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Radio(
                    activeColor: AppColors.primaryColor,
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}