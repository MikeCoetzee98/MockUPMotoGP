import 'package:flutter/material.dart';
import 'package:motoGP_MockUp/more_assets/calendar_icon.dart';
import 'package:motoGP_MockUp/more_assets/helmet_icon.dart';
import 'package:motoGP_MockUp/more_assets/media_icon.dart';
import 'package:motoGP_MockUp/more_assets/shop_icon.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // selectedFontSize: 9,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            HelmetIcon.motorbike_helmet,
            color: Color(0xFFda0040),
          ),
          title: Text(
            'Standings',
            style: TextStyle(fontSize: 9, color: Colors.black, fontFamily: 'Hemihead'),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            MediaIcon.media_icon,
            color: Color(0xFFda0040),
          ),
          title: Text(
            'Media',
            style: TextStyle(fontSize: 9, color: Colors.black, fontFamily: 'Hemihead'),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CalendarIcon.calendar_icon,
            color: Color(0xFFda0040),
          ),
          title: Text(
            'Calendar',
            style: TextStyle(fontSize: 9, color: Colors.black, fontFamily: 'Hemihead'),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            ShopIcon.shopping_icon,
            color: Color(0xFFda0040),
          ),
          title: Text(
            'Shop',
            style: TextStyle(fontSize: 9, color: Colors.black, fontFamily: 'Hemihead'),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_horiz,
            color: Color(0xFFda0040),
          ),
          title: Text(
            'More',
            style: TextStyle(fontSize: 9, color: Colors.black, fontFamily: 'Hemihead'),
          ),
        ),
      ],
    );
  }
}
