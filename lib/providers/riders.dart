import 'package:flutter/material.dart';

import '../providers/rider.dart';

class Riders with ChangeNotifier{
  List<Rider> _riders = [
    Rider(firstName: 'MARC', lastName: 'MARQUEZ', abbreviation: 'MM93', flagIMG: 'assets/images/spain_icon.jpg', teamColor: Colors.orange, teamName: 'REPSOL HONDA', profileImage: 'assets/images/marquezcrop.png'),
    Rider(firstName: 'BRAD', lastName: 'BINDER', abbreviation: 'BB33', flagIMG: 'assets/images/sa_icon.jpg', teamColor: Colors.blue[900], teamName: 'REDBULL KTM', profileImage: 'assets/images/bindercrop.png'),
    Rider(firstName: 'DANILO', lastName: 'PETRUCCI', abbreviation: 'DP9', flagIMG: 'assets/images/italy-ICON.jpg', teamColor: Colors.red, teamName: 'DUCATI', profileImage: 'assets/images/petruccicrop.png'),
    Rider(firstName: 'FRANCO', lastName: 'MORBIDELLI', abbreviation: 'FM21', flagIMG: 'assets/images/italy-ICON.jpg', teamColor: Color(0xFF69ea5e), teamName: 'PETRONAS YAMAHA', profileImage: 'assets/images/morbidelliCROP.png'),
    Rider(firstName: 'JOHAN', lastName: 'ZARCO', abbreviation: 'JZ5', flagIMG: 'assets/images/french_icon.png', teamColor: Colors.black, teamName: 'PRAMAC DUCATI', profileImage: 'assets/images/zarcocrop.png'),
    Rider(firstName: 'ALEX', lastName: 'RINS', abbreviation: 'AR42', flagIMG: 'assets/images/spain_icon.jpg', teamColor: Colors.blue, teamName: 'SUZUKI', profileImage: 'assets/images/rinscrop.png'),
  ];

  List<Rider> get riders {
    return[..._riders];
  }
}