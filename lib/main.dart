import 'package:flutter/material.dart';
import 'package:motoGP_MockUp/screens/home_screen.dart';
import 'package:motoGP_MockUp/screens/race_preview_screen.dart';
import 'package:provider/provider.dart';
import './providers/riders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Riders(),

        )
      ],

          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
 
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
        routes: {
          '/race': (context) => RaceScreen(),
        },
      ),
    );
  }
}
  
