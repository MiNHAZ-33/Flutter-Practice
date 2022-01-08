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
    return MaterialApp(
        title: 'Go Fly',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff3E0798),
          backgroundColor: Color(0xffC887FF).withOpacity(0.45),
          accentColor: Color(0xff00BCEF),
          textTheme: TextTheme(
            headline1: GoogleFonts.oxygen(fontSize: 24, color: Colors.white),
            headline2: GoogleFonts.lato(
              fontSize: 24,
            ),
            headline3: GoogleFonts.lora(fontSize: 15),
          ),
        ),
        home: PlacesOverViewScreen(),
        routes: {});
  }
}
