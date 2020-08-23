import 'package:best_flutter_ui_templates/announce_app/announce_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/hotel/announce_app.png',
      navigateScreen: AnnounceHomeScreen(),
    )
  ];
}
