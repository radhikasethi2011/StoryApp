import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(15)),
          Image.asset('assets/images/head1.jpg'),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Text(
              'The 3 Little Pigs',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            // Padding(padding: EdgeInsets.all(10)),
            child: Text(
              'Author : James Halliwell-Phillipps',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            // Padding(padding: EdgeInsets.all(10)),
            child: Text(
              'Publishing Date : June 19, 1890',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            // Padding(padding: EdgeInsets.all(10)),
            child: Text(
              'Publisher: Continuum International Publishing Group.',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            // Padding(padding: EdgeInsets.all(10)),
            child: Text(
              'Available on Amazon and Flipkart.',
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
