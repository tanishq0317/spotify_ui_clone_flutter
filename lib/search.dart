import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // or any background color you use
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 110,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("assets/images/profile.png", width: 30, height: 30),
                SizedBox(width: 10),
                Text(
                  "Search",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30),
              ],
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Artists, songs, or podcasts',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionTitle("Start browsing"),
            SizedBox(height: 15),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                startBrowsingStackItems(
                  "Music",
                  "assets/images/travis.jpeg",
                  Color.fromARGB(255, 204, 37, 93),
                ),
                startBrowsingStackItems(
                  "Podcast",
                  "assets/images/podcast.jpeg",
                  Color.fromARGB(255, 34, 89, 36),
                ),
                startBrowsingStackItems(
                  "Live Events",
                  "assets/images/arijit.jpeg",
                  Color.fromARGB(255, 113, 51, 124),
                ),
                startBrowsingStackItems(
                  "Audio Book",
                  "assets/images/book.jpeg",
                  Color.fromARGB(255, 0, 59, 107),
                ),
              ],
            ),
            SizedBox(height: 20),
            sectionTitle("Discover something new"),
            SizedBox(height: 15),
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                discoverNewStackItems(
                  "#bollywood lofi",
                  "assets/images/dsn_1.jpeg",
                ),
                discoverNewStackItems(
                  "Music for you",
                  "assets/images/dsn_2.jpeg",
                ),
                discoverNewStackItems("#peaceful", "assets/images/dsn_3.jpeg"),
              ],
            ),
            SizedBox(height: 20),
            sectionTitle("Browse all"),
            SizedBox(height: 15),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                browseAllStackItems(
                  "Made For You",
                  "assets/images/ba_1.jpeg",
                  Color.fromARGB(255, 0, 34, 61),
                ),
                browseAllStackItems(
                  "New Releases",
                  "assets/images/ba_2.jpeg",
                  Color.fromARGB(255, 48, 146, 71),
                ),
                browseAllStackItems(
                  "Summer",
                  "assets/images/ba_3.jpeg",
                  Color.fromARGB(255, 4, 154, 19),
                ),
                browseAllStackItems(
                  "Hindi",
                  "assets/images/ba_4.jpeg",
                  Color.fromARGB(255, 19, 154, 188),
                ),
                browseAllStackItems(
                  "Telegu",
                  "assets/images/ba_5.jpeg",
                  Color.fromARGB(255, 212, 32, 215),
                ),
                browseAllStackItems(
                  "Video charts",
                  "assets/images/ba_6.jpeg",
                  Color.fromARGB(255, 223, 186, 21),
                ),
                browseAllStackItems(
                  "Punjabi",
                  "assets/images/ba_7.jpeg",
                  Color.fromARGB(255, 210, 57, 18),
                ),
                browseAllStackItems(
                  "Tamil",
                  "assets/images/ba_8.jpeg",
                  Color.fromARGB(255, 114, 50, 57),
                ),
                browseAllStackItems(
                  "Radio",
                  "assets/images/ba_9.jpeg",
                  Color.fromARGB(255, 182, 152, 16),
                ),
                browseAllStackItems(
                  "Pop",
                  "assets/images/ba_10.jpeg",
                  Color.fromARGB(255, 255, 60, 0),
                ),
                browseAllStackItems(
                  "Indie",
                  "assets/images/ba_11.jpeg",
                  Color.fromARGB(255, 106, 68, 68),
                ),
                browseAllStackItems(
                  "Trending",
                  "assets/images/ba_12.jpeg",
                  Color.fromARGB(255, 147, 158, 166),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

Widget startBrowsingStackItems(String title, String imagePath, Color colourBg) {
  return Container(
    decoration: BoxDecoration(
      color: colourBg,
      borderRadius: BorderRadius.circular(4),
    ),

    child: Stack(
      children: [
        // Text
        Positioned(
          top: 10,
          left: 10,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Positioned(
          right: 0,
          //Images
          child: Image.asset(
            imagePath,
            width: 50,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

Widget discoverNewStackItems(String tag, String imageUsed) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
    child: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(imageUsed, fit: BoxFit.cover),
        Container(color: Colors.black.withAlpha(70)),
        Positioned(
          bottom: 0,
          left: 10,
          child: Text(
            tag,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget browseAllStackItems(String title, String imagePath, Color colourBg) {
  return Container(
    decoration: BoxDecoration(
      color: colourBg,
      borderRadius: BorderRadius.circular(4),
    ),

    child: Stack(
      children: [
        // Text
        Positioned(
          top: 10,
          left: 10,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          //Images
          child: Transform.rotate(
            angle: 0.1, // Negative = counter-clockwise, positive = clockwise
            child: Image.asset(
              imagePath,
              width: 50,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
