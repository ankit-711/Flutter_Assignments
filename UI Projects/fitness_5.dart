import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class pilatesVideos extends StatefulWidget {
  const pilatesVideos({super.key});

  @override
  State<pilatesVideos> createState() => _pilatesVideosState();
}

class _pilatesVideosState extends State<pilatesVideos> {
  List<dynamic> videoId = [
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=G16eeqO2U7g"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=ofa5hlozkMs"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=ULEZ3-2HRiQ"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=G16eeqO2U7g"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=ofa5hlozkMs"),
    YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=ULEZ3-2HRiQ"),
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
