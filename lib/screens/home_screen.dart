import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/rider_list.dart';
import '../widgets/top_stories_widget.dart';
import '../widgets/next_race_widget.dart';
import '../widgets/home_top.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
//-------------------------------------- Top Images --------------------------------------

            HomeTopSection(),

//-------------------------------------- Next Race --------------------------------------

            Container(
              width: size.width * 0.88,
              alignment: Alignment.topLeft,
              // padding: EdgeInsets.only(),
              child: Text(
                "NEXT RACE:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hemihead',
                    fontSize: 15),
              ),
            ),
            SizedBox(height: 10),
            NextRaceContainer(),
            SizedBox(height: 20),

//-------------------------------------- Top Stories --------------------------------------

            Container(
              width: size.width * 0.88,
              alignment: Alignment.topLeft,
              // padding: EdgeInsets.only(),
              child: Text(
                "TOP STORIES:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hemihead',
                    fontSize: 15,
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20),
            TopStories(),
            // SizedBox(height: 20),
            FlatButton(
              onPressed: null,
              child: Text(
                'VIEW MORE',
                style: TextStyle(fontFamily: 'Hemihead', fontSize: 15),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: size.width * 0.88,
              alignment: Alignment.topLeft,
              // padding: EdgeInsets.only(),
              child: Text(
                "Riders:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Hemihead',
                    fontSize: 15,
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20),

            //----------------------------------------------------riders horizontal list-------------------------------
            RiderList(),

            SizedBox(height: 10),
            FlatButton(
              onPressed: null,
              child: Text(
                'VIEW STANDINGS',
                style: TextStyle(fontFamily: 'Hemihead', fontSize: 15),
              ),
            ),
            SizedBox(height: 15),
//-------------------------------------- Bottom Navigation --------------------------------------
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
