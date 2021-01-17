import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Rider with ChangeNotifier {
  final String firstName;
  final String lastName;
  final String abbreviation;
  final String flagIMG;
  final Color teamColor;
  final String teamName;
  final String profileImage;

  Rider({
    @required this.firstName,
    @required this.lastName,
    @required this.abbreviation,
    @required this.flagIMG,
    @required this.teamColor,
    @required this.teamName,
    @required this.profileImage,
  });
}
