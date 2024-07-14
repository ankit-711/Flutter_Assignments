import 'package:flutter/material.dart';

class Q602 extends StatefulWidget {
  const Q602({super.key});

  @override
  State<Q602> createState() => _Q602State();
}

class _Q602State extends State<Q602> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 280,
                color: Colors.orange,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 275,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              Positioned(
                  top: 140,
                  child: Container(
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  )),
              Positioned(
                  width: 220,
                  height: 220,
                  top: 50,
                  left: 90,
                  child: Image.asset("assets/images/food.png")),
            ],
          ),
          Text(
            "Sei Ua Samun Phrai",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: Colors.blue,
                  ),
                  Text("50min"),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text("4.8"),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_fire_department_outlined,
                    color: Colors.red,
                  ),
                  Text("325 Kcal"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "\$",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "12",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 40,
                child: Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.remove,
                        size: 17,
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(
                            child: Text(
                          "1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                      Icon(Icons.add, size: 17),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15),
                child: Text(
                  "Ingredienta",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 45,
                          height: 45,
                          child: Image.asset("assets/images/strawb.png")),
                      Text("Noodle"),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 45,
                          height: 45,
                          child: Image.asset("assets/images/strawb.png")),
                      Text("Noodle"),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 45,
                          height: 45,
                          child: Image.asset("assets/images/strawb.png")),
                      Text("Noodle"),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 45,
                          height: 45,
                          child: Image.asset("assets/images/strawb.png")),
                      Text("Noodle"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15),
                child: Text(
                  "About",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
            child: Container(child: Text("A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta's Talat Market.",)),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 100,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(27),
        ),
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined),style: ButtonStyle(iconSize: WidgetStateProperty.all(35)),),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: Center(child: Text("1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
            ),
          ],
        )),
    );
  }
}
