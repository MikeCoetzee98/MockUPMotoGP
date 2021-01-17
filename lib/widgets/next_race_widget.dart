import 'package:flutter/material.dart';

class NextRaceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.88,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.white.withOpacity(0.3), BlendMode.dstATop),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Qatar GP - Losail International Circuit",
                  style: TextStyle(fontFamily: 'Hemihead'),
                ),
                Container(
                  height: size.height * 0.05,
                  width: size.width * 0.05,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/qatar_icon.png"),
                        fit: BoxFit.fitWidth),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.13,
            width: size.width * 0.8,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/circuit.jpg"),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.all(Radius.circular(3))),
          ),
          Container(
            height: size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "28 March 2021",
                  style: TextStyle(fontFamily: 'Hemihead'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/race');
                  },
                  color: Colors.transparent,
                  child: Text('More Info',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hemihead')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
