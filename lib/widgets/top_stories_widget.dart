import 'package:flutter/material.dart';

class TopStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        //------------------------------- 1 -------------------------------------

        Container(
          height: size.height * 0.10,
          width: size.width * 0.95,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.09,
                width: size.width * 0.20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/story1.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Text(
                "Binder wins MotoGP\nrookie of the year",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Hemihead'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Text(
                  "Article",
                  style: TextStyle(fontSize: 8, color: Color(0xFFda0040), fontWeight: FontWeight.bold, fontFamily: 'Hemihead'),
                ),
                Text(
                  "22 November 2020",
                  style: TextStyle(fontSize: 9, fontFamily: 'Hemihead'),
                )
              ])
            ],
          ),
        ),
        Divider(color: Color(0xFFda0040),),

        //------------------------------- 2 -------------------------------------

        Container(height: size.height * 0.10,
          width: size.width * 0.95,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.09,
                width: size.width * 0.20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/story2.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft, 
                  child: Icon(Icons.play_arrow_rounded, color: Colors.white,)),
              ),
              Text(
                "Top 5 crashes of\n2020 so far",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Hemihead'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Text(
                  "Video",
                  style: TextStyle(fontSize: 8, color: Color(0xFFda0040), fontWeight: FontWeight.bold, fontFamily: 'Hemihead'),
                ),
                Text(
                  "29 September 2020",
                  style: TextStyle(fontSize: 9, fontFamily: 'Hemihead'),
                )
              ])
            ],
          ),),
          Divider(color: Color(0xFFda0040),),

        //------------------------------- 3 -------------------------------------

        Container(height: size.height * 0.10,
          width: size.width * 0.95,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.09,
                width: size.width * 0.20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/story3.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Text(
                "MotoGP 2021 Calendar\nannounced",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Hemihead'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Text(
                  "Article",
                  style: TextStyle(fontSize: 8, color: Color(0xFFda0040), fontWeight: FontWeight.bold, fontFamily: 'Hemihead'),
                ),
                Text(
                  "22 November 2020",
                  style: TextStyle(fontSize: 9, fontFamily: 'Hemihead'),
                )
              ])
            ],
          ),),
          Divider(color: Color(0xFFda0040),),
          
      ],
    );
  }
}
