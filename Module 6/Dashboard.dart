import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseproject/MessageScreen.dart';
import 'package:myfirebaseproject/ProfileScreen.dart';
import 'package:myfirebaseproject/SignInScreen.dart';

class Dashboard extends StatefulWidget {
  User? user;

  Dashboard({this.user});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? username = "";
  TextEditingController _searchController = TextEditingController();

  List<DocumentSnapshot>? allUsers;
  List<DocumentSnapshot>? filteredUsers;

  Future<void> getUserRecord() async {
    var document = await FirebaseFirestore.instance
        .collection("Users")
        .doc(widget.user!.uid)
        .get();

    setState(() {
      username = document["name"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserRecord();
  }

  void searchUser(String keyword) {
    setState(() {
      print(keyword);
      if (keyword.isEmpty) {
        filteredUsers = allUsers;
      } else {
        filteredUsers = allUsers!
            .where((user) =>
                user["name"].toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Welcome ${username}",
          style: TextStyle(color: Colors.teal),
        ),
        iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Color.fromARGB(0, 77, 47, 99),
        elevation: 20,
        actions: [
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.teal,
            ),
            onSelected: (String value) {
              if (value == "Profile") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        user: widget.user,
                      ),
                    ));
              } else if (value == "Logout") {
                // logout code
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'Profile',
                  child: Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                PopupMenuItem(
                  value: 'Logout',
                  child: Text(
                    'Logout',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ];
            },
            // Set the background color of the popup menu
            color: Colors.teal,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: TextField(
                  onChanged: (value) {
                    searchUser(value);
                  },
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Enter search keywords',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  )),
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('Users').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                }
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }

                allUsers = snapshot.data!.docs
                    .where((element) => element.id != widget.user!.uid)
                    .toList();

                // Ensure filteredUsers is initialized whenever allUsers is updated
                filteredUsers =
                    List.from(allUsers!); // Initialize or reset filteredUsers

                return ListView.builder(
                  itemCount: filteredUsers?.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Messagescreen(
                                    userSnapshot: filteredUsers![index]),
                              ));
                        },
                        child: Card(
                          color: Color.fromARGB(255, 54, 42, 54),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "${filteredUsers?[index]["profilePic"]}",
                                  ),
                                  onBackgroundImageError: (_, __) {
                                    // Handle image loading error
                                  },
                                ),
                                SizedBox(width: 30),
                                Text(
                                  "${filteredUsers?[index]["name"]}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
