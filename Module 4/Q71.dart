import 'package:flutter/material.dart';


class Q71 extends StatefulWidget {
  const Q71({super.key});

  @override
  State<Q71> createState() => _Q71State();
}

class _Q71State extends State<Q71> {
  Widget myWidget = GallaryScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer example"),
      ),
      body: myWidget,
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.black,
            ),
            ListTile(
              trailing: Icon(Icons.photo_library),
              title: Text("Gallary"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  myWidget = GallaryScreen();
                });
              },
            ),
            ListTile(
              trailing: Icon(Icons.library_music),
              title: Text("Audio"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  myWidget = AudioScreen();
                });
              },
            ),
            ListTile(
              trailing: Icon(Icons.video_library),
              title: Text("Video"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  myWidget = VideoScreen();
                });
              },
            ),
          ],
        ),
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