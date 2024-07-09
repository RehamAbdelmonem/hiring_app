import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/utils/styles.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 0,
      backgroundColor: const Color(0xffFFF0ED),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 585.0),
      content: Row(
        children: [
          const Icon(FontAwesomeIcons.circleExclamation, color: Colors.red,size: 15,),
          const SizedBox(width: 8), 
          Text(
            message,
            style:Styles.textStyle12.copyWith(color: Colors.red),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
