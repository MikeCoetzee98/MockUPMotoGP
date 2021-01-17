import 'package:flutter/material.dart';


class HomeTopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            height: size.height * 0.25,
            child: Stack(children: [
              Container(
                height: size.height * 0.25 - 22,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(
                    image: AssetImage("assets/images/home_image.jpg"),
                    fit: BoxFit.fitWidth,
                    colorFilter: new ColorFilter.mode(
                        Colors.white.withOpacity(0.90), BlendMode.dstATop),
                  ),
                ),
              ),
              Positioned(
                  bottom: size.height * 0.02,
                  left: 0,
                  right: size.width * 0.65,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo_tp.png"),
                          fit: BoxFit.contain),
                    ),
                  )),
            ])),
      ],
    );
  }
}
