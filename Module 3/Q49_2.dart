import 'package:flutter/material.dart';

class Q492 extends StatelessWidget {
  const Q492({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 500,
            child: Image.asset(
              "assets/images/Oeschinen.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Kandersteg, Switzerland",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 20,
                        ),
                        Text("41"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.blue,)),
                        Text("CALL",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_outward,color: Colors.blue,)),
                        Text("ROUTE",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.blue,)),
                        Text("SHARE",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Oeschinensee is accessible by foot from Kandersteg within 1.5 hours. The cable car operates in summer and winter season daily from mornings till evenings - non stop. In summer enjoy swimming in the lake, boat rides on the blue and clear water or just have fun with the toboggan run at the top station of the cable car. Several hotels around the lake offer rooms in summer. Restaurants are open in winter and summer. The region belongs to the Unesco heritage Jungfrau-Aletsch.")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
