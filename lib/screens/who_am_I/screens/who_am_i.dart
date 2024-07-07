import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/screens/who_am_I/widgets/who_am_i_body.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class WhoAmI extends StatefulWidget {
  const WhoAmI({super.key});

  @override
  State<WhoAmI> createState() => _WhoAmIState();
}

class _WhoAmIState extends State<WhoAmI> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    WhoAmIBody(),
    Text('Home', style: Styles.textStyle18,),
    Text('Home', style: Styles.textStyle18,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: AppColors.primaryColor,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.circleUser),
            label: 'Who am I',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.earthAmericas),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartShopping,),
            label: 'Services',
          ),
        ],
      ),
      body: widgetList[myIndex]
    );
  }
}
