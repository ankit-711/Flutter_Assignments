import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/newTasks/fitness_2.dart';
import 'package:project2/newTasks/fitness_3.dart';
import 'package:project2/newTasks/fitness_4.dart';
import 'package:project2/newTasks/fitness_5.dart';


class Fitness1 extends StatefulWidget {
  const Fitness1({super.key});

  @override
  State<Fitness1> createState() => _Fitness1State();
}

class _Fitness1State extends State<Fitness1> {
  List<Map<String, dynamic>> typeList = [
    {
      "title": "Yoga",
      "images": "assets/images/Yoga.jpg",
      "videoCount": "8 Videos",
    },
    {
      "title": "Full Body",
      "images": "assets/images/full_body.jpg",
      "videoCount": "6 Videos",
    },
    {
      "title": "Stretching",
      "images": "assets/images/stretching.jpg",
      "videoCount": "6 Videos",
    },
    {
      "title": "Pilates",
      "images": "assets/images/Pilates.jpg",
      "videoCount": "4 Videos",
    },
  ];
  Widget myWidget = yogaVideos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
            child: Text("My Fitness App",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white))),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: typeList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => index == 0
                                  ? yogaVideos()
                                  : index == 1
                                      ? fullBodyVideos()
                                      : index == 2
                                          ? stretchingVideos()
                                          : pilatesVideos(),
                            ));
                      },
                      child: Container(
                        width: 380,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 160,
                                height: 175,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${typeList.elementAt(index)['title']}",
                                      style: GoogleFonts.openSans(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "${typeList.elementAt(index)['videoCount']}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 190,
                              width: 190,
                              decoration: const BoxDecoration(),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  child: Image.asset(
                                    "${typeList.elementAt(index)['images']}",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ankit Patel"),
              accountEmail: Text("ankitpatel@gmail.com"),
              arrowColor: Colors.white,
              currentAccountPicture: Image.asset("assets/images/user.png"),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(
              iconColor: Colors.white,
              trailing: Icon(Icons.video_collection),
              title: Text("Yoga Videos",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myWidget,
                    ));
                setState(() {
                  myWidget = yogaVideos();
                });
              },
            ),
            ListTile(
              iconColor: Colors.white,
              trailing: Icon(Icons.video_collection),
              title: Text(
                "Full Body Videos",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myWidget,
                    ));
                setState(() {
                  myWidget = fullBodyVideos();
                });
              },
            ),
            ListTile(
              iconColor: Colors.white,
              trailing: Icon(Icons.video_collection),
              title: Text("Stretching Videos",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myWidget,
                    ));
                setState(() {
                  myWidget = stretchingVideos();
                });
              },
            ),
            ListTile(
              iconColor: Colors.white,
              trailing: Icon(Icons.video_collection),
              title: Text("Pilates Videos",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myWidget,
                    ));
                setState(() {
                  myWidget = pilatesVideos();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
