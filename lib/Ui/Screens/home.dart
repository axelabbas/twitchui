import 'package:flutter/material.dart';

import '../primaries/Colors.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List Categories = [
    "All",
    "Metaverse",
    "Play to Earn",
    "Marvelous",
    "Free to Play"
  ];
  int selectedPage = 0;
  var selectedCategory = 0;

  Map trendingGames = {
    "Star Atlas": "game1.png",
    "Thetan Arena": "game2.png",
    "Axie Infinty": "game0.png",
  };
  Map recommendedGames = {
    "Axie Infinty": "game0.png",
    "The Sandbox": "game3.png",
    "Thetan Arena": "game2.png",
  };
  Map freeGames = {
    "Axie Infinty": "game10.png",
    "The Sandbox": "game11.png",
    "Thetan Arena": "game0.png",
  };
  var schema = colorSchema();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: RadialGradient(
          colors: [schema.primary60, Colors.white],
          center: const Alignment(.8, -1),
        ),
      ),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 45, left: 20, right: 0),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome, Fadel!",
                      style: TextStyle(
                          color: schema.neutral80,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("resources/images/fofo2.jpg"),
                      radius: 25,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Game Categories",
                      style: TextStyle(
                          color: schema.neutralBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                          color: schema.primary50,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              categoriesRow(),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Now",
                      style: TextStyle(
                          color: schema.neutralBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                          color: schema.primary50,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              gamesRow(trendingGames),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended For You",
                      style: TextStyle(
                          color: schema.neutralBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                          color: schema.primary50,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              gamesRow(recommendedGames),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free For Now",
                      style: TextStyle(
                          color: schema.neutralBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(
                          color: schema.primary50,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              gamesRow(freeGames),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          ),
          child: Material(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(30)),
            elevation: 15,
            child: Container(
              height: 90,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: BottomNavigationBar(
                    unselectedItemColor: schema.neutral60,
                    selectedItemColor: schema.primary50,
                    selectedFontSize: 14,
                    unselectedFontSize: 14,
                    selectedIconTheme: const IconThemeData(size: 26),
                    unselectedIconTheme: const IconThemeData(size: 26),
                    showUnselectedLabels: true,
                    onTap: (value) {
                      setState(() {
                        selectedPage = value;
                      });
                    },
                    currentIndex: selectedPage,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.home,
                            ),
                          ),
                          label: "Home"),
                      BottomNavigationBarItem(
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.search_outlined),
                          ),
                          label: "Search"),
                      BottomNavigationBarItem(
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.video_call_sharp),
                          ),
                          label: "Stream"),
                      BottomNavigationBarItem(
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.star_border_outlined),
                          ),
                          label: "Favourite"),
                      BottomNavigationBarItem(
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.person_outline_rounded),
                          ),
                          label: "Profile"),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget categoriesRow() {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return categoryCard(index);
        },
        itemCount: Categories.length,
      ),
    );
  }

  Widget categoryCard(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: .2),
            borderRadius: BorderRadius.circular(15),
            color: (selectedCategory == index)
                ? schema.primary50
                : schema.neutralGrey),
        child: Center(
            child: Text(
          Categories[index],
          style: TextStyle(
              fontSize: 16,
              color: (selectedCategory == index)
                  ? Colors.white
                  : schema.neutral80),
        )),
      ),
    );
  }

  Widget gamesRow(data) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return gameCard(index, data);
        },
        itemCount: trendingGames.length,
      ),
    );
  }

  Widget gameCard(index, data) {
    String gameTitle = data.keys.elementAt(index);
    String gameImage = data.values.elementAt(index);

    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("resources/images/$gameImage"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            gameTitle,
            style: TextStyle(
                color: schema.neutral80,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        )
      ]),
    );
  }
}
