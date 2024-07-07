import 'package:flutter/material.dart';
import 'package:hiring_app/screens/services/widgets/service_card.dart';
import 'package:hiring_app/utils/styles.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 55, left: 10),
            child: Text(
              'Services',
              style: Styles.appBarStyle,
            ),
          ),
          SizedBox(
            height: 235,
            child: ListView.builder(itemBuilder: (context, index) {
              return const ServiceCard();
            },
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 55, left: 10),
            child: Text(
              'Popular Services',
              style: Styles.appBarStyle,
            ),
          ),
          SizedBox(
            height: 235,
            child: ListView.builder(itemBuilder: (context, index) {
              return const ServiceCard();
            },
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

