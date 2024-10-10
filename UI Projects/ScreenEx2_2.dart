import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Screenex22 extends StatefulWidget {
  const Screenex22({super.key});

  @override
  State<Screenex22> createState() => _Screenex22State();
}

class _Screenex22State extends State<Screenex22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Rakib",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueGrey),
            ),
            Text(
              "Manage your file",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 364,
              height: 180,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 91, 21, 211),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      offset: Offset(0, 15),
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    height: 180,
                    child: Image.asset("assets/images/Storage.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Unlimited Storage",
                        style: TextStyle(color: Colors.white60, fontSize: 16),
                      ),
                      Text(
                        "\$30/year",
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 36,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Offer till May 26",
                        style: TextStyle(color: Colors.white60),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.orange[500],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Upgrade",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple[300],
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 60,
                              offset: Offset(0, 10),
                            ),
                          ]),
                      child: Icon(
                        Icons.filter,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Picture",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "840 items",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 60,
                              offset: Offset(0, 10),
                            ),
                          ]),
                      child: Icon(
                        Icons.video_collection,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Video",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "210 items",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple[300],
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 60,
                              offset: Offset(0, 10),
                            ),
                          ]),
                      child: Icon(
                        Icons.file_copy_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "File",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "145 Items",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Files",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 364,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.asset("assets/images/folder.png",),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Google UX Course",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(
                      "Uploaded on April 24",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    ],
                  ),
                  SizedBox(width: 50,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 25,)),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 364,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: Image.asset("assets/images/folder.png",),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Google UX Course",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(
                      "Uploaded on April 24",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    ],
                  ),
                  SizedBox(width: 50,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 25,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
