import 'package:flutter/material.dart';

class Q70 extends StatefulWidget {
  const Q70({super.key});

  @override
  State<Q70> createState() => _Q70State();
}

class _Q70State extends State<Q70> {
  int currentIndex = 0;

  List Screens = [
    GallaryScreen(),
    AudioScreen(),
    VideoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          "Bottom NavigationBar Example",
          style: TextStyle(color: Colors.white),
      ),),
      body: Screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
        ],
      ),
    );
  }
}

class GallaryScreen extends StatelessWidget {
  const GallaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Gallary",style: TextStyle(fontSize: 40),),
    );
  }
}

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Video",style: TextStyle(fontSize: 40),),
    );
  }
}

class AudioScreen extends StatelessWidget {
  const AudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Audio",style: TextStyle(fontSize: 40),),
    );
  }
}