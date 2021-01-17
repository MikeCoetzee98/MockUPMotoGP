import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/rider.dart';

class RiderItem extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String abbreviation;
  final String flagIMG;
  final Color teamColor;
  final String teamName;
  final String profileImage;

  RiderItem(this.firstName, this.lastName, this.abbreviation, this.flagIMG,
      this.teamColor, this.teamName, this.profileImage);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final rider = Provider.of<Rider>(context, listen: false);
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border(
          top: BorderSide(
            width: size.width * 0.01,
            color: rider.teamColor.withOpacity(0.2),
          ),
          left: BorderSide(
            width: size.width * 0.01,
            color: rider.teamColor.withOpacity(0.2),
          ),
        ),
      ),
      //padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(left: 10),
      height: size.height * 0.40,
      width: size.width * 0.44,
      child: Column(
        children: [
          Container(
            height: size.height * 0.30,
            width: size.width * 0.44,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(rider.profileImage), fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Text(
                    rider.abbreviation,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: rider.teamColor.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hemihead',
                        fontSize: 30),
                  ),
                  Container(
                    height: flagIMG == 'assets/images/spain_icon.jpg'
                        ? size.height * 0.07
                        : size.height * 0.09,
                    width: flagIMG == 'assets/images/spain_icon.jpg'
                        ? size.width * 0.07
                        : size.width * 0.09,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(rider.flagIMG),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              height: size.height * 0.10,
              width: size.width * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    rider.firstName + '\n' + rider.lastName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Hemihead',
                        fontSize: 18),
                  ),
                  Text(
                    rider.teamName,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: 'Hemihead', fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
