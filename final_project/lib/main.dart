import 'package:final_project/provider/cart.dart';
import 'package:final_project/provider/places_list.dart';
import 'package:final_project/screens/Places_detailed_screen.dart';
import 'package:final_project/screens/cart_screen.dart';
import 'package:provider/provider.dart';

import './screens/PlacesOverViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlacesList(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
      ],
      child: MaterialApp(
          title: 'Go Fly',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xff3E0798),
            backgroundColor: Color(0xffC887FF).withOpacity(0.45),
            accentColor: Color(0xff00BCEF),
            textTheme: TextTheme(
              headline1: GoogleFonts.oxygen(fontSize: 24, color: Colors.white),
              headline2: GoogleFonts.lato(fontSize: 20, color: Colors.black),
              headline4: GoogleFonts.aladin(fontSize: 14),
              headline3: GoogleFonts.lora(
                fontSize: 16,
                color: Color(0xff180A1B),
              ),
            ),
          ),
          home: PlacesOverViewScreen(),
          routes: {
            PlacesDetailedScreen.routeName: (context) => PlacesDetailedScreen(),
            CartScreen.routeName: (context) => CartScreen(),
          }),
    );
  }
}
