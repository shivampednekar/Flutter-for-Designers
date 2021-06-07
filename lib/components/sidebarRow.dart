import 'package:flutter/material.dart';

import 'package:designcodeapp/constants.dart';
import 'package:designcodeapp/model/sidebar.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({required this.item});

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: item.background
            ),
            child: item.icon),
        SizedBox(width: 12),
        Container(
          child: Text(item.title, style: kCalloutLabelStyle,),
        ),
      ],
    );
  }
}