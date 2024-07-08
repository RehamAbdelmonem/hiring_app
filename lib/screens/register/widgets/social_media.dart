import 'package:flutter/material.dart';
import 'package:hiring_app/utils/styles.dart';
import 'package:hiring_app/widgets/custom_checkbox.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Favourite Social Media',
            style: Styles.textStyle16,
          ),
        ),
         SizedBox(
          height: 5.0,
        ),
        CustomCheckbox(
          boxName: 'Facebook',
          image: 'assets/images/path14.svg',
        ),
        CustomCheckbox(
          boxName: 'Twitter',
          image: 'assets/images/twitter.svg',
        ),
        CustomCheckbox(
          boxName: 'LinkedIn',
          image: 'assets/images/linkedin3.svg',
          imageheight: 30,
        ),
      ],
    );
  }
}