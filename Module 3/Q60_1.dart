import 'package:flutter/material.dart';

class Q601 extends StatefulWidget {
  const Q601({super.key});

  @override
  State<Q601> createState() => _Q601State();
}

class _Q601State extends State<Q601> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white70.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white),),),
                 IconButton(onPressed: (){}, icon: Icon(Icons.search),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white),),),
               ],
             ),
             SizedBox(
              height: 40,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Restaurant",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 23),),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 142, 142, 142),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Text("20-30min",style: TextStyle(color: Colors.white38),)),
                        ),
                        SizedBox(width: 10,),
                        Text("2.4km",style: TextStyle(color: const Color.fromARGB(255, 142, 142, 142),fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Text("Restaurant",style: TextStyle(color: const Color.fromARGB(255, 142, 142, 142),fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/logo-R.png",fit: BoxFit.cover,),
                ),
              ],
             ),
             SizedBox(height: 12,),
             Row(
              children: [
                Text("Orange Sandwiches is delicious",),
                SizedBox(width: 106,),
                Icon(Icons.star_border_rounded,color: Colors.orange,),
                Text("4.7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ],
             ),
             SizedBox(height: 35,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Recommend",style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Popular",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Noodles",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Pizza",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                ],
               ),
             ),
             SizedBox(
              height: 35,
             ),
             Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/food.png"),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Soba Soup",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      Text("No1. in sales",style: TextStyle(color: Colors.amber,fontSize: 12,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("\$",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900),),
                          Text("12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 118,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),iconSize: 20,),
                    ],
                  ),
                ],
              ),
             ),
             SizedBox(
              height: 20,
             ),
             Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/food.png"),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sei Ua Samun Phrai",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      Text("No1. in sales",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("\$",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900),),
                          Text("12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 60,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),iconSize: 20,),
                    ],
                  ),
                ],
              ),
             ),
             SizedBox(
              height: 20,
             ),
             Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/food.png"),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ratatoullie Pasta",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                      Text("No1. in sales",style: TextStyle(color: Colors.amber,fontSize: 12,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("\$",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900),),
                          Text("12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 78,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),iconSize: 20,),
                    ],
                  ),
                ],
              ),
             ),
             SizedBox(height: 50,),
             Row(
              children: [
                Icon(Icons.linear_scale_sharp,color: Colors.orange,size: 50,),
                SizedBox(width: 255,),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined),style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.orange),iconSize: WidgetStateProperty.all(35)),)
              ],
             ),
          ],
        ),
      ),
    );
  }
}
