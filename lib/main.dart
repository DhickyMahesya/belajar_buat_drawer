import 'package:flutter/material.dart';

import './nav_drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Drawer",
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('APK ANIME'),
            bottom: TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                new Tab(icon: new Icon(Icons.audiotrack), text: "Lagu Anime"),
                new Tab(icon: new Icon(Icons.ondemand_video_outlined), text: "Ongoing"),
              ],
            ),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(
            children: <Widget>[
              Galeri(),
              song(),
              Ongoing(),
            ],
          ),
        ),
      );
}
