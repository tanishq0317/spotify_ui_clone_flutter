import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/profile.png", width: 30, height: 30),
              SizedBox(width: 15),
              Text(
                "Your Library",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.search, size: 30),
              SizedBox(width: 10),
              Icon(Icons.add, size: 30),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  minimumSize: Size(0, 0),
                ),
                child: Text(
                  "Playlists",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  minimumSize: Size(0, 0),
                ),
                child: Text(
                  "Podcasts",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  minimumSize: Size(0, 0),
                ),
                child: Text(
                  "Artists",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  minimumSize: Size(0, 0),
                ),
                child: Text(
                  "Downloaded",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.arrow_upward),
              Icon(Icons.arrow_downward),
              SizedBox(width: 5),
              Text(
                "Recents",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.grid_view_outlined),
            ],
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              libraryItem(
                "Liked Songs",
                "Playlist • Made by Tanishq",
                "assets/images/liked.jpeg",
              ),
              libraryItem(
                "Arijit Playlist",
                "Artist • Arijit Singh",
                "assets/images/arijit.jpeg",
              ),
              libraryItem(
                "Chill Beats",
                "Playlist • Made by Tanishq",
                "assets/images/travis.jpeg",
              ),
              libraryItem(
                "Morning Vibes",
                "Artist • Anuv Jain",
                "assets/images/anuvjain.jpeg",
              ),
              libraryItem(
                "Bollywood LoFi",
                "Playlist • Made by Tanishq",
                "assets/images/diljit.jpeg",
              ),
              libraryItem(
                "Midnight Vibes",
                "Playlist • Late night chill",
                "assets/images/ba_1.jpeg",
              ),
              libraryItem(
                "Morning Flow",
                "Playlist • Made by Tanishq",
                "assets/images/ba_2.jpeg",
              ),
              libraryItem(
                "Desi Beats",
                "Playlist • Desi Vibes Only",
                "assets/images/ba_3.jpeg",
              ),
              libraryItem(
                "Chill Scenes",
                "Artist • LoFi India",
                "assets/images/ba_4.jpeg",
              ),
              libraryItem(
                "Workout Power",
                "Playlist • Pump it up",
                "assets/images/ba_5.jpeg",
              ),
              libraryItem(
                "Acoustic Evenings",
                "Playlist • Made by Tanishq",
                "assets/images/ba_6.jpeg",
              ),
              libraryItem(
                "Lofi Dreams",
                "Playlist • Sleepy sounds",
                "assets/images/ba_7.jpeg",
              ),
              libraryItem(
                "Punjabi Heat",
                "Artist • Diljit Dosanjh",
                "assets/images/ba_8.jpeg",
              ),
              libraryItem(
                "Focus Mode",
                "Playlist • Deep Work",
                "assets/images/ba_9.jpeg",
              ),
              libraryItem(
                "Soulful Strings",
                "Playlist • Made by Tanishq",
                "assets/images/ba_10.jpeg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget libraryItem(String title, String subtitle, String imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 55,
            height: 55,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    ),
  );
}
