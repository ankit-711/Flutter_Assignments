import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Messagescreen extends StatefulWidget {
  final DocumentSnapshot<Object?> userSnapshot;
  const Messagescreen({super.key, required this.userSnapshot});

  @override
  State<Messagescreen> createState() => _MessagescreenState();
}

class _MessagescreenState extends State<Messagescreen> {
  TextEditingController _msgController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("--r${widget.userSnapshot.id}");
    print("--r${FirebaseAuth.instance.currentUser!.uid}");
  }

  String FormatTimestamp(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    String formattedTime = DateFormat.jm().format(dateTime);
    String formattedDate = DateFormat.yMMMd().format(dateTime);
    return '${formattedDate} at ${formattedTime}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 30,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.network(widget.userSnapshot["profilePic"]),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "${widget.userSnapshot["name"]}",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("messages")
                    .where("receiver",
                        isEqualTo: FirebaseAuth.instance.currentUser!.uid)
                    .where("sender", isEqualTo: widget.userSnapshot.id)
                    .orderBy("timestamp")
                    .snapshots(),
                builder: (context, senderSnapshot) {
                  if (senderSnapshot.hasData) {
                    var senderMessages = senderSnapshot.data!.docs;
                    return StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection("messages")
                            .where("sender",
                                isEqualTo:
                                    FirebaseAuth.instance.currentUser!.uid)
                            .where("receiver",
                                isEqualTo: widget.userSnapshot.id)
                            .orderBy("timestamp")
                            .snapshots(),
                        builder: (context, receiverSnapshot) {
                          if (receiverSnapshot.hasData) {
                            var receiverMessages = receiverSnapshot.data!.docs;
                            var allMessages = [
                              ...senderMessages,
                              ...receiverMessages
                            ];
                            allMessages.sort(
                              (a, b) => (a['timestamp'] as Timestamp)
                                  .compareTo(b['timestamp'] as Timestamp),
                            );
                            return ListView.builder(
                              itemCount: allMessages.length,
                              itemBuilder: (context, index) {
                                var message = allMessages[index];
                                String senderID = message['sender'];
                                bool isCurrentUserIsSender = senderID ==
                                    FirebaseAuth.instance.currentUser!.uid;
                                return Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: isCurrentUserIsSender
                                        ? MainAxisAlignment.end
                                        : MainAxisAlignment.start,
                                    children: [
                                      if (!isCurrentUserIsSender)
                                        CircleAvatar(
                                          child: Text(
                                              "${widget.userSnapshot["name"][0]}"),
                                        )
                                      else
                                        SizedBox(
                                          width: 32,
                                        ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Flexible(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: isCurrentUserIsSender
                                                ? Colors.lightBlue
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                                boxShadow: [BoxShadow(color: Colors.black,blurRadius: 12)]
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 12.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                "${message["message"]}",
                                                style: TextStyle(
                                                    color: Colors.lightBlue),
                                              ),
                                              Text(
                                                FormatTimestamp(
                                                    message["timestamp"]
                                                        as Timestamp),
                                                style: TextStyle(
                                                    color: Colors.lightBlue),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          } else if (receiverSnapshot.hasError) {
                            print(
                                "------------->>> ERRoR ${receiverSnapshot.error}");
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        });
                  } else if (senderSnapshot.hasError) {
                    print("----------------->>> ERROR ${senderSnapshot.error}");
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  controller: _msgController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Type Message Here",
                    hintStyle: TextStyle(color: Colors.teal),
                  ),
                  style: TextStyle(color: Colors.yellow),
                )),
                IconButton(
                    onPressed: () {
                      String messageText = _msgController.text.toString();
                      if (messageText.isNotEmpty) {
                        FirebaseFirestore.instance.collection("messages").add({
                          "sender": FirebaseAuth.instance.currentUser!.uid,
                          "receiver": widget.userSnapshot.id,
                          "message": messageText,
                          "timestamp": DateTime.now(),
                        });
                        _msgController.clear();
                      }
                    },
                    icon: Icon(
                      Icons.send,
                      color: Colors.blue,
                      size: 30,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
