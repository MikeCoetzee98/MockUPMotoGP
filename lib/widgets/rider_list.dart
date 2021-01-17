import 'package:flutter/material.dart';
import 'package:motoGP_MockUp/providers/riders.dart' show Riders;
import 'package:motoGP_MockUp/widgets/rider_item.dart';
import 'package:provider/provider.dart';

class RiderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final riderdata = Provider.of<Riders>(context);
    final riders = riderdata.riders;
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: size.height * 0.4,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: riders.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: riders[i],
            child: RiderItem(
              riders[i].firstName,
              riders[i].lastName,
              riders[i].abbreviation,
              riders[i].flagIMG,
              riders[i].teamColor,
              riders[i].teamName,
              riders[i].profileImage,
            ),
          ),
        ),
      ),
    );
  }
}
