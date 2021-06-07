import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:designcodeapp/components/sidebarRow.dart';
import 'package:designcodeapp/model/sidebar.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34.0), //27
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
          vertical: 35.0, horizontal: 22.0
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21.0,
                ),
                SizedBox(width: 15.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Serena Lora", style: kHeadlineLabelStyle,),
                    SizedBox(height: 4,),
                    Text("License ends on 22 Feb, 2022", style: kSearchPlaceholderStyle,)
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
            SidebarRow(item: sidebarItem[0],),
            SizedBox(height: 32.0,),
            SidebarRow(item: sidebarItem[1],),
            SizedBox(height: 32.0,),
            SidebarRow(item: sidebarItem[2],),
            SizedBox(height: 32.0,),
            SidebarRow(item: sidebarItem[3],),
            SizedBox(height: 32.0,),
            Spacer(),
            Row(
              children: [
                Image.asset('asset/icons/icon-logout.png', width: 17.0,),
                SizedBox(width: 12.0,),
                Text("Log Out", style: kSecondaryCalloutLabelStyle,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}