
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.textAppBar,
  });

  final String textAppBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:55,left: 10),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.chevronLeft,
              weight: 2,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
           Text(
            textAppBar,
            style: Styles.appBarStyle,
          ),
        ],
      ),
    );
  }
}
