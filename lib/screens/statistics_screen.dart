import 'package:flutter/material.dart';
import 'package:humanfirst/constants.dart';
import 'package:humanfirst/widget_statistics_screen/info_card.dart';
import 'package:humanfirst/widget_statistics_screen/weekly_chart.dart';

class StatisticsScreen extends StatefulWidget {
  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: Color(0xff392850),
      ),

      body:
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 40),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.03),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                InfoCard(
                  title: "Total Cases",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: 1062,
                  press: () {},
                ),
                InfoCard(
                  title: "Total Deaths",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: 75,
                  press: () {},
                ),
                InfoCard(
                  title: "Total Recovered",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: 689,
                  press: () {},
                ),
                InfoCard(
                  title: "New Cases",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: 75,
                  press: () {},
                ),
              ],
            ),
          ),
//          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 21),
                        blurRadius: 53,
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildTitleWithMoreIcon(),
                      SizedBox(height: 15),
                      buildCaseNumber(context),
                      SizedBox(height: 15),
                      Text(
                        "From Health Center",
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: kTextMediumColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      WeeklyChart(),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildInfoTextWithPercentage(
                            percentage: "6.43",
                            title: "From Last Week",
                          ),
                          buildInfoTextWithPercentage(
                            percentage: "9.43",
                            title: "Recovery Rate",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 21),
                        blurRadius: 54,
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
//                  child: Column(
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Text(
//                            "Global Map",
//                            style: TextStyle(
//                              fontSize: 15,
//                            ),
//                          ),
////                          Image.asset("assets/icons/more.svg")
//                        ],
//                      ),
////                      SizedBox(height: 10),
////                      Image.asset("assets/icons/map.svg"),
//                    ],
//                  ),
                ),
              ],
            ),
          ),
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 10),
//            child: SingleChildScrollView(
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    "Preventions",
//                    style: Theme.of(context)
//                        .textTheme
//                        .title
//                        .copyWith(fontWeight: FontWeight.bold),
//                  ),
////                  SizedBox(height: 20),
////                  buildPreventation(),
////                  SizedBox(height: 40),
////                  buildHelpCard(context)
//                ],
//              ),
//            ),
//          )
        ],
      ),
    ),
    );
  }
}



RichText buildInfoTextWithPercentage({String title, String percentage}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "$percentage% \n",
          style: TextStyle(
            fontSize: 20,
            color: kPrimaryColor,
          ),
        ),
        TextSpan(
          text: title,
          style: TextStyle(
            color: kTextMediumColor,
            height: 1.5,
          ),
        ),
      ],
    ),
  );
}

Row buildCaseNumber(BuildContext context) {
  return Row(
    children: <Widget>[
      Text(
        "547 ",
        style: Theme.of(context)
            .textTheme
            .display3
            .copyWith(color: kPrimaryColor, height: 1.2),
      ),
      Text(
        "5.9% ",
        style: TextStyle(color: kPrimaryColor),
      ),
//      Image.asset("assets/icons/increase.svg")
    ],
  );
}

Row buildTitleWithMoreIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "New Cases",
        style: TextStyle(
          color: kTextMediumColor,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
//      Image.asset("assets/icons/more.svg")
    ],
  );
}
