import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fscreen4 extends StatefulWidget {
  int currentindex;
  Fscreen4({super.key, required this.currentindex});

  @override
  State<Fscreen4> createState() => _Fscreen4State();
}

class _Fscreen4State extends State<Fscreen4> {
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.grey[300],
            child: Image.asset("${itemList.elementAt(widget.currentindex)['images']}"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${itemList.elementAt(widget.currentindex)['title']}",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      size: 18,
                    ),
                    Text(
                      "4.5 ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text("(4,254 Reviews)"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Description",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.",
                  style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Color",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Quantity",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 105,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.grey[300],
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                size: 20,
                              )),
                          Text("2",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 20,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text("\$280.00",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 17))
                      ],
                    ),
                    Container(
                      width: 220,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Add to Cart",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
