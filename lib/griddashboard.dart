
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Checklist",
      subtitle: "Check if you're safe or not",
      img: "assets/todo.png",
  );


  Items item2 = new Items(
    title: "Food",
    subtitle: "Ask for food here in need",
    img: "assets/food.png",


  );
  Items item3 = new Items(
    title: "Help Centers",
    subtitle: "Places to go for help",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Health Centers",
    subtitle: "Nearest Healthcare centers",
    img: "assets/hospital.png",
  );
  Items item5 = new Items(
    title: "Statistics",
    subtitle: "Covid-19 Information",
    img: "assets/stat.png",
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "Update Profile & etc.",
    img: "assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,

          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
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
                    data.subtitle,
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
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img,});
}
