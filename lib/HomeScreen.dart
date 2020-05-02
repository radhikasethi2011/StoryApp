import 'package:flutter/material.dart';
import 'read_screen.dart';
import 'more_info.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      //to addd the title name + the stars, and category name beneath it.
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: Text(
                    'The 3 Little Pigs',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.redAccent[200],
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                  Icon(Icons.star, color: Colors.yellow, size: 13.5),
                ],
              ),
              Container(
                padding: EdgeInsets.all(2),
                child: Text(
                  'Category',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    Widget text = Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Three Little Pigs is a fable about three pigs who build three houses of different materials. A Big Bad Wolf blows down the first two pigs' houses, made of straw and sticks respectively, but is unable to destroy the third pig's house, made of bricks.",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.blueGrey, fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget button = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0),
            child: ButtonTheme(
              minWidth: 125,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Continue Reading',
                  style: TextStyle(fontSize: 16),
                ),
                color: Colors.blueGrey,
                elevation: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => readScreen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: ButtonTheme(
              minWidth: 125,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.all(8),
                child: Text(
                  'More information',
                  style: TextStyle(fontSize: 16),
                ),
                color: Colors.white,
                elevation: 8,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoreInfo()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.book),
        backgroundColor: Colors.blueGrey[900],
        elevation: 8,
        tooltip: 'Library',
        onPressed: () {},
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/heading.jpg",
//              fit: BoxFit.cover,
          ),
          title,
          text,
          button,
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
