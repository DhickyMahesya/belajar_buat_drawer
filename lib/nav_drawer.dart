import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.collections,
              text: 'Galeri',
              onTap: () => {
                    DefaultTabController.of(context)?.animateTo(0),
                    Navigator.pop(context),
                  }),
          _drawerItem(
              icon: Icons.audiotrack_outlined,
              text: 'lagu',
              onTap: () => {
                    {
                      DefaultTabController.of(context)?.animateTo(1),
                      Navigator.pop(context),
                    }
                  }),
          _drawerItem(
              icon: Icons.ondemand_video_outlined,
              text: 'Ongoing',
              onTap: () => {
                    DefaultTabController.of(context)?.animateTo(2),
                    Navigator.pop(context),
                  }),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              'Labels',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Bookmark',
              onTap: () => {
                    print('Bookmark Anime'),
                  }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(image: AssetImage('asset/image/kocchi.jpg'), fit: BoxFit.cover),
      ),
      otherAccountsPictures: [
        ClipOval(
          child: Image(image: AssetImage('asset/image/KON.jpg'), fit: BoxFit.cover),
        ),
        ClipOval(
          child: Image(image: AssetImage('asset/image/lie.jpg'), fit: BoxFit.cover),
        )
      ],
      accountName: Text('Dhicky Mahesya'),
      accountEmail: Text('dhivanipramana19@flutter.com'),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}

class Galeri extends StatelessWidget {
  final List<String> Anime = [
    'asset/image/KON.jpg',
    'asset/image/kocchi.jpg',
    'asset/image/lie.jpg',
    'asset/image/lucky.jpg',
    'asset/image/spy.jpg',
    'asset/image/bojji.jpg',
  ];

  final List<String> Judul = [
    'K-ON',
    'ACCHI KOCCHI',
    'SHIGATSU KIMI NO USO',
    'LUCKY STAR',
    'SPY X FAMILY',
    'OUSAMA RANGKING',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Galeri'),
        ),
      ),
      body: ListView.builder(
        itemCount: Anime.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                Anime[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(Judul[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}

class song extends StatelessWidget {
  final List lagu = [
    "Yui – Again (Fullmetal Alchemist : Broterhood)",
    "Galileo Galilei – Aoi Shirori (Anohana)",
    "Chaos Head OP (F.D.D – by Itou Kanako)",
    "Rolling Star – YUI (Bleach)",
    "Shillouette – by KANA-BOON",
    "Ikimono-gakari – Netsujou no Spectrum ",
    "Burnout Syndromes – Fly High!!",
    "Akeboshi – Wind ( Naruto )",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Lagu Anime'),
        ),
      ),
      body: ListView.builder(
        itemCount: lagu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.audiotrack,
                color: Colors.blueAccent,
              ),
              title: Text(lagu[index], style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 30)),
            ),
          );
        },
      ),
    );
  }
}

class Ongoing extends StatelessWidget {
  final List<String> nama = [
    'SPY X FAMILY',
    'The Rising of the Shield Hero ',
    'Yuusha Yamemasu',
    'Komi Cant Communication (Season 2)',
    'Tomodachi Game',
    'Kaguya-sama: Love is War (Season 3)',
    'BanG Dream! Poppin’ Dream!',
    'Tokyo 24th Ward',
    'Slow Loop',
    'Aharen-san wa Hakarenai',
  ];

  final List<String> studio = [
    'Wit Studio, CloverWorks',
    'Kinema Citrus, DR Movie',
    'EMT Squared',
    'OLM',
    'Okuruto Noboru',
    'A-1 Pictures',
    'Sanzigen ',
    'CloverWorks',
    'Connect',
    'Felix Film',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Anime Ongoing'),
        ),
      ),
      body: ListView.builder(
        itemCount: nama.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                nama[index],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(studio[index], style: TextStyle(color: Colors.lightBlueAccent, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
