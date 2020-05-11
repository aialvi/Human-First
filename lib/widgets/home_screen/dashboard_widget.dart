import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:humanfirst/models/meta/dashboard_grid_item_model.dart';
import 'package:humanfirst/screens/checklist_screen.dart';
import 'package:humanfirst/widgets/home_screen/dashboard_grid_widget.dart';

class DashboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DashboardGridItem checkListItem = new DashboardGridItem(
      title: "Checklist",
      subtitle: "Check if you're safe or not",
      image: "assets/todo.png",
    );
    DashboardGridItem foodItem = new DashboardGridItem(
      title: "Food",
      subtitle: "Ask for food here in need",
      image: "assets/food.png",
    );
    DashboardGridItem helpCenterItem = new DashboardGridItem(
      title: "Help Centers",
      subtitle: "Places to go for help",
      image: "assets/map.png",
    );
    DashboardGridItem askForHelpItem = new DashboardGridItem(
      title: "Ask for Help",
      subtitle: "For any kind of need",
      image: "assets/hospital.png",
    );
    DashboardGridItem statisticsItem = new DashboardGridItem(
      title: "Statistics",
      subtitle: "Covid-19 Information",
      image: "assets/stat.png",
    );
    DashboardGridItem settingsItem = new DashboardGridItem(
      title: "Settings",
      subtitle: "Update Profile & etc.",
      image: "assets/setting.png",
    );
    var color = 0xeeeeeeee;
    return Flexible(
        child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/checklist');
              },
              child: DashboardGridWidget(
                color: color,
                title: checkListItem.title,
                subtitle: checkListItem.subtitle,
                image: checkListItem.image,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/fooditem');
              },
              child: DashboardGridWidget(
                color: color,
                title: foodItem.title,
                subtitle: foodItem.subtitle,
                image: foodItem.image,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/helpcenteritem');
              },
              child: DashboardGridWidget(
                color: color,
                title: helpCenterItem.title,
                subtitle: helpCenterItem.subtitle,
                image: helpCenterItem.image,
              ),
            ),

              GestureDetector(
              onTap: (){
              Navigator.pushNamed(context, '/askforhelpitem');
              },
              child: DashboardGridWidget(
                color: color,
                title: askForHelpItem.title,
                subtitle: askForHelpItem.subtitle,
                image: askForHelpItem.image,
                ),
              ),



            GestureDetector(
            onTap: (){
            Navigator.pushNamed(context, '/statisticsitem');
            },
            child: DashboardGridWidget(
              color: color,
              title: statisticsItem.title,
              subtitle: statisticsItem.subtitle,
              image: statisticsItem.image,
            ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/settingsitem');
              },
              child: DashboardGridWidget(
                color: color,
                title: settingsItem.title,
                subtitle: settingsItem.subtitle,
                image: settingsItem.image,
              ),
            ),
          ],
    ));
  }
}




