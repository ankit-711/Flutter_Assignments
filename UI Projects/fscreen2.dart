import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fscreen2 extends StatefulWidget {
  const Fscreen2({super.key});

  @override
  State<Fscreen2> createState() => _Fscreen2State();
}

class _Fscreen2State extends State<Fscreen2> {
  Color bgcolor = Colors.black;
  Icon fav = Icon(Icons.favorite_border);
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          "Most Popular",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Center(
                          child: Text(
                        "All",
                        style: GoogleFonts.poppins(color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(width: 2)),
                      child: Center(
                          child: Text(
                        "Chair",
                        style: GoogleFonts.poppins(),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(width: 2)),
                      child: Center(
                          child: Text(
                        "Sofa",
                        style: GoogleFonts.poppins(),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(width: 2)),
                      child: Center(
                          child: Text(
                        "Bed",
                        style: GoogleFonts.poppins(),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(width: 2)),
                      child: Center(
                          child: Text(
                        "Lamp",
                        style: GoogleFonts.poppins(),
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/chair1.png"),
                            ),
                            Text("Mirzapur Chair",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/lamp1.png"),
                            ),
                            Text("Glass Lamp",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/chair2.png"),
                            ),
                            Text("Swivel Chair",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/chair3.png"),
                            ),
                            Text("Rocking Chair",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/lamp2.png"),
                            ),
                            Text("Fluorescent Lamp",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/bed1.png"),
                            ),
                            Text("Round Bed",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/sofa1.png"),
                            ),
                            Text("Stylish Sofa",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                    Stack(children: [
                      Container(
                        width: 170,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.asset("assets/images/bed2.png"),
                            ),
                            Text("Adjustable Bed",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_purple500_sharp,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "4.5k",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Text("\$130.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
