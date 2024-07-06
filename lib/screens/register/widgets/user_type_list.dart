
import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class UserTypeList extends StatefulWidget {
  const UserTypeList({super.key});

  @override
  State<UserTypeList> createState() => _UserTypeListState();
}

class _UserTypeListState extends State<UserTypeList> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'User Type',
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
                    'Seller',
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
                    'Buyer',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Radio(
                    activeColor: AppColors.primaryColor,
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  Text(
                    'Both',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black,
                    ),
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