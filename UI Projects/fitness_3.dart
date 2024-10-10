import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class fullBodyVideos extends StatefulWidget {
  const fullBodyVideos({super.key});

  @override
  State<fullBodyVideos> createState() => _fullBodyVideosState();
}

class _fullBodyVideosState extends State<fullBodyVideos> {
  List<dynamic> videoId = [
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=7KSNmziMqog"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=JIQUbPqfVV4"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=1fjeQKI-5wg"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=7KSNmziMqog"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=JIQUbPqfVV4"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=1fjeQKI-5wg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Videos",style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: videoId.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: videoId.elementAt(index),
                          flags: const YoutubePlayerFlags(
                              autoPlay: false,
                              controlsVisibleAtStart: true,
                              useHybridComposition: true),
                        ),
                        showVideoProgressIndicator: true,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
