import 'package:flutter/material.dart';
import 'package:hiring_app/screens/register/controllers/user_type_controller.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class UserTypeList extends StatefulWidget {
  final UserTypeController controller;

  const UserTypeList({super.key, required this.controller});

  @override
  State<UserTypeList> createState() => _UserTypeListState();
}

class _UserTypeListState extends State<UserTypeList> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateState);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateState);
    super.dispose();
  }

  void _updateState() {
    setState(() {});
  }


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
                    groupValue: widget.controller.value,
                    onChanged: (value) {
                      widget.controller.setValue(value!);
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
                   groupValue: widget.controller.value,
                    onChanged: (value) {
                      widget.controller.setValue(value!);
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
                    groupValue: widget.controller.value,
                    onChanged: (value) {
                      widget.controller.setValue(value!);
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

