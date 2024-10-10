import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/Image_ex/ScreenEx1_2.dart';


class Screenex11 extends StatefulWidget {
  const Screenex11({super.key});

  @override
  State<Screenex11> createState() => _Screenex11State();
}

class _Screenex11State extends State<Screenex11> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          // toolbarHeight: 150,
          title: Text(
            "Our Recipes",
            style: GoogleFonts.dmSerifText(color: Colors.white, fontSize: 28),
          ),
          backgroundColor: Colors.grey[900],
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          ],
          bottom: TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.amber,
            dividerHeight: 0,
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Breakfast",
              ),
              Tab(
                text: "Lunch",
              ),
              Tab(
                text: "Brunch",
              ),
              Tab(
                text: "Dinner",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/burger1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            "Pastrami - Bacon",
                            style: GoogleFonts.dmSerifText(
                                color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            "On Sesameseed",
                            style: GoogleFonts.dmSerifText(
                                color: Colors.white, fontSize: 17),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/burger1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            "Pastrami - Bacon",
                            style: GoogleFonts.dmSerifText(
                                color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            "On Sesameseed",
                            style: GoogleFonts.dmSerifText(
                                color: Colors.white, fontSize: 17),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: [
                    Container(
                      width: 360,
                      height: 250,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/Recipe1.jpg",
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screenex12(),
                            ));
                      },
                      child: Container(
                        width: 360,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 340,
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BY JACOB BROKOWSKI",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Ginger & Garlic Noodle\nSoup",
                                style: GoogleFonts.dmSerifText(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 17,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 17,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 17,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 17,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 17,
                                    color: Colors.amber,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
