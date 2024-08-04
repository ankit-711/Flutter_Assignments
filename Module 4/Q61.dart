import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Q61 extends StatefulWidget {
  const Q61({super.key});

  @override
  State<Q61> createState() => _Q61State();
}

class _Q61State extends State<Q61> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, 
      child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 30,right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Menu",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 30),),
                Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey,),
                    SizedBox(width: 15,),
                    Icon(Icons.filter_alt_outlined,size: 25,),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Kaiseki",style: GoogleFonts.poppins(color: Colors.black),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 212, 23),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Ramen",style: GoogleFonts.poppins(color: Colors.black),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Tanuki",style: GoogleFonts.poppins(color: Colors.black),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Tempura",style: GoogleFonts.poppins(color: Colors.black),)),
                    ),
                    SizedBox(width: 10),
                    Container(
                       height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Sushi",style: GoogleFonts.poppins(color: Colors.black),)),
                    ),
                  ],
                ),
              ),
            ),
           TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            dividerHeight: 0,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
            ),
            tabs: [
              Tab(
                text: "All",
               ),
               Tab(
                text: "Salad",
               ),
               Tab(
                text: "Pizza",
               ),
               Tab(
                text: "Asian",
               ),
               Tab(
                text: "Burger",
               ),
               Tab(
                text: "Dessert",
               ),
            ],
           ),
           Expanded(
             child: GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisExtent: 300,crossAxisSpacing: 20,mainAxisSpacing: 15),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/p_egg.jpg",)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vegetables And",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Text("Poached Egg",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Text(" (11)",style: GoogleFonts.poppins(color: const Color.fromARGB(255, 218, 217, 217)),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ 13.50",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 247, 224, 24),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(Icons.add,color: Colors.black,size: 18,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
             
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/salad.jpg",)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Avocado Salad",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Text("GLUTEN FREE",style: GoogleFonts.poppins(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Text(" (29)",style: GoogleFonts.poppins(color: const Color.fromARGB(255, 218, 217, 217)),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ 19.28",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 247, 224, 24),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(Icons.add,color: Colors.black,size: 18,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/pancake.jpg",height: 165,fit: BoxFit.fitHeight,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pancakes With",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Text("Orange Sauce",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Text(" (10)",style: GoogleFonts.poppins(color: const Color.fromARGB(255, 218, 217, 217)),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ 12.50",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold
                                  ),),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 247, 224, 24),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(Icons.add,color: Colors.black,size: 18,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/veges.jpg",),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vegetables And",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Text("Salad",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: const Color.fromARGB(255, 247, 224, 24),size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Text(" (15)",style: GoogleFonts.poppins(color: const Color.fromARGB(255, 218, 217, 217)),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ 15.30",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 247, 224, 24),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(Icons.add,color: Colors.black,size: 18,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
             ),
           ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined,),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label: "Cart"),
        ],
        selectedIconTheme: IconThemeData(color: const Color.fromARGB(255, 226, 205, 13)),
        selectedLabelStyle: GoogleFonts.poppins(color: const Color.fromARGB(255, 226, 205, 13)),
      ),
    ),
    );
  }
}