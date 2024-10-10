import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/newTasks/fscreen4.dart';


class Fscreen3 extends StatefulWidget {
  const Fscreen3({super.key});

  @override
  State<Fscreen3> createState() => _Fscreen3State();
}

class _Fscreen3State extends State<Fscreen3> {
  List<Map<String, dynamic>> itemList = [
    {
      "title": "Modern Sofa",
      "price": "\$140.00",
      "images": "assets/images/sofa1.png"
    },
    {
      "title": "Classic Sofa",
      "price": "\$140.00",
      "images": "assets/images/sofa2.png"
    },
    {
      "title": "Mid Century Sofa",
      "price": "\$140.00",
      "images": "assets/images/sofa3.png"
    },
    {
      "title": "Transitional Sofa",
      "price": "\$140.00",
      "images": "assets/images/sofa4.png"
    },
    {
      "title": "Modern Sofa",
      "price": "\$140.00",
      "images": "assets/images/sofa1.png"
    },
    {
      "title": "Classic Sofa",
      "price": "\$140.00",
      "images": "assets/images/sofa2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          "Sofa",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 250),
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Fscreen4(currentindex: index),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "${itemList.elementAt(index)['images']}",
                                height: 170,
                                width: 170,
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
                          Text("${itemList.elementAt(index)['title']}",
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
                          Text("\$140.00",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
