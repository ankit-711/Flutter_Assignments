import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fscreen1 extends StatefulWidget {
  const Fscreen1({super.key});

  @override
  State<Fscreen1> createState() => _Fscreen1State();
}

class _Fscreen1State extends State<Fscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          "Special Offers",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "25%",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Today's Special",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Lorem Ipsum is simply \ndummy text of the printing.",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    child: Image.asset("assets/images/chair1.png"),
                  ),
                ],
              ),
            ),

            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "15%",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Weekend Deals",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Lorem Ipsum is simply \ndummy text of the printing.",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    child: Image.asset("assets/images/lamp1.png"),
                  ),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "30%",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "New Arrivals",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Lorem Ipsum is simply \ndummy text of the printing.",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    child: Image.asset("assets/images/chair2.png"),
                  ),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "20%",
                          style: GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Black Friday",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Lorem Ipsum is simply \ndummy text of the printing.",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    child: Image.asset("assets/images/chair3.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
