import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class therapyVideo extends StatefulWidget {
  String ? videoId,topicname;
  therapyVideo(this.videoId,this.topicname);
  @override
  State<StatefulWidget> createState()=>therapyVideoState();
}
class therapyVideoState extends State<therapyVideo> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    String? id = widget.videoId!;
    final ScreenSize = MediaQuery.of(context).size;
   return Scaffold(
     appBar: AppBar(
       title: Text(widget.topicname!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
       backgroundColor: Colors.blue[800],
     ),
     body: SafeArea(child: SizedBox(
       height: kIsWeb ? ScreenSize.height/1.13 : ScreenSize.height,
       child: YoutubePlayer(
         controller: YoutubePlayerController(
             initialVideoId: id,
         flags: YoutubePlayerFlags(
           autoPlay: true,
           mute: false,
         )
         ),
         showVideoProgressIndicator: true,
       ),
     )),
   );
  }
}
