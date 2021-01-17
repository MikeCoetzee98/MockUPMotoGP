import 'package:flutter/material.dart';

class RaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 0.20,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/circuit.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.white.withOpacity(0.90), BlendMode.dstATop),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "QATAR GP",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Hemihead'),
            ),
          ),
        ),
      ),
    );
  }
}
