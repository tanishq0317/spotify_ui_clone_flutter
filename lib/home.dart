import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/images/profile.png", width: 30, height: 30),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text("All", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text("Music", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text("Podcast", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 15),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2.5,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              homeStackItem("Liked Songs", "assets/images/liked.jpeg"),
              homeStackItem("On Repeat", "assets/images/onrepeat.jpeg"),
              homeStackItem("Pritam Mix", "assets/images/pritam.jpeg"),
              homeStackItem("Travis Mix", "assets/images/travis.jpeg"),
              homeStackItem("Arijit Mix", "assets/images/arijit.jpeg"),
              homeStackItem("Anuv jain Mix", "assets/images/anuvjain.jpeg"),
              homeStackItem("Diljit Mix", "assets/images/diljit.jpeg"),
              homeStackItem("AP mix", "assets/images/ap.jpeg"),
            ],
          ),
          SizedBox(height: 25),
          Text(
            "Your top mixes",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  itemBox("Arijit", "assets/images/home_1.jpeg"),
                  SizedBox(width: 12),
                  itemBox("Badshah", "assets/images/home_2.jpeg"),
                  SizedBox(width: 12),
                  itemBox("Jasleen", "assets/images/home_3.jpeg"),
                  SizedBox(width: 12),
                  itemBox("Bolly", "assets/images/home_4.jpeg"),
                  SizedBox(width: 12),
                  itemBox("Classical", "assets/images/home_5.jpeg"),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Jump back in ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  itemBox2("Taylor", "assets/images/home_6.jpeg"),
                  SizedBox(width: 12),
                  itemBox2("camelia", "assets/images/home_7.jpeg"),
                  SizedBox(width: 12),
                  itemBox2("Drake", "assets/images/home_8.jpeg"),
                  SizedBox(width: 12),
                  itemBox2("Dr.jake", "assets/images/home_9.jpeg"),
                  SizedBox(width: 12),
                  itemBox2("Royal", "assets/images/home_10.jpeg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget homeStackItem(String name, String imagePath) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.grey.withAlpha(50), // Light transparent background
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        // Image taking full height
        ClipRRect(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
          child: Image.asset(
            imagePath,
            height: double.infinity,
            width: 75,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        // Text section
        Expanded(
          child: Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget itemBox(String label, String imagePath) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: 120,
          height: 125,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(height: 6),
      SizedBox(
        width: 120,
        child: Text(
          label,
          style: TextStyle(fontSize: 13, color: Colors.grey),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}

Widget itemBox2(String label, String imagePath) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: 120,
          height: 125,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(height: 6),
      SizedBox(
        width: 120,
        child: Text(
          label,
          style: TextStyle(fontSize: 13, color: Colors.grey),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
