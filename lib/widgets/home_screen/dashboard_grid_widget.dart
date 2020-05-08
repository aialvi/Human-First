import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGridWidget extends StatelessWidget {
  const DashboardGridWidget({
    Key key,
    @required this.color,
    @required this.title,
    @required this.subtitle,
    @required this.image,
  }) : super(key: key);

  final int color;
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            width: 42,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            title,
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: Colors.white38,
                    fontSize: 10,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}