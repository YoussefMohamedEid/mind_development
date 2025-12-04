import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentaion/home/widgets/go_button_widget.dart';

bool playing = false;

class MusicView extends StatefulWidget {
  const MusicView({super.key});

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8DDB4),
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Row(
          children: [
            Icon(Icons.music_note, color: Colors.black, size: 38),
            SizedBox(width: 8),
            Text(
              'Classical Music',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {
                  // Handle previous action
                },
                color: Colors.black,
                iconSize: 60,
              ),
              SizedBox(width: 20),

              CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xffE67E22),
                child: IconButton(
                  icon: Icon(playing ? Icons.pause : Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      playing = !playing;
                    });
                  },
                  color: Colors.white,
                  iconSize: 90,
                ),
              ),

              SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {
                  // Handle next action
                },
                color: Colors.black,
                iconSize: 60,
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(Icons.volume_down, color: Colors.black, size: 30),
              ),
              Slider(
                value: 0.5,
                onChanged: (newValue) {
                  // Handle volume change
                },
                activeColor: Color(0xffE67E22),
                inactiveColor: Colors.grey,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffE67E22),
                child: Icon(Icons.volume_up, color: Colors.black, size: 30),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffF7E39A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Playlists',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.black54),
                Row(
                  children: [
                    ButtonCallVideoMusic(
                      backGroundC: Color(0xffE67E22),
                      icon: Icons.nature,
                      name: "Nature",
                      onTap: () {},
                      iconTextColor: Colors.black,
                    ),
                    SizedBox(width: 8),
                    ButtonCallVideoMusic(
                      backGroundC: Color(0xffE67E22),
                      icon: Icons.library_music,
                      name: "Oldies",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MusicView()),
                        );
                      },
                      iconTextColor: Colors.black,
                    ),
                    SizedBox(width: 8),
                    ButtonCallVideoMusic(
                      backGroundC: Color(0xffE67E22),
                      icon: Icons.home_outlined,
                      name: "Hymns",
                      onTap: () {},
                      iconTextColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
