import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentaion/call/call_users_list_view.dart';

import 'package:flutter_application_1/presentaion/home/widgets/go_button_widget.dart';
import 'package:flutter_application_1/presentaion/home/widgets/hungry_widget.dart';
import 'package:flutter_application_1/presentaion/home/widgets/time_widget.dart';
import 'package:flutter_application_1/presentaion/music/music_view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hour = DateTime.now().hour; // 0 → 23

    Widget selectedWidget;

    if (hour >= 7 && hour < 12) {
      selectedWidget = TimeWidget();
    } else if (hour >= 12 && hour < 24) {
      selectedWidget = TimeWidget2();
    } else {
      selectedWidget = TimeWidget3();
    }

    return StreamBuilder<DateTime>(
      stream: Stream.periodic(
        const Duration(seconds: 1),
        (_) => DateTime.now(),
      ),
      builder: (context, snapshot) {
        final now = snapshot.data ?? DateTime.now();

        final time =
            "${now.hour}:${now.minute.toString().padLeft(2, '0')} ${now.hour >= 12 ? "PM" : "AM"}";

        final weekday =
            [
              "Monday",
              "Tuesday",
              "Wednesday",
              "Thursday",
              "Friday",
              "Saturday",
              "Sunday",
            ][now.weekday - 1];

        final date = "$weekday, ${now.month}/${now.day}";

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 16,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 36),
                    selectedWidget,
                    const SizedBox(height: 36),
                    Row(
                      children: [
                        ButtonCallVideoMusic(
                          backGroundC: Colors.red,
                          icon: Icons.phone_in_talk_rounded,
                          name: "CALL",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CallUsersListView(),
                              ),
                            );
                          },
                          iconTextColor: Colors.white,
                        ),
                        SizedBox(width: 8),
                        ButtonCallVideoMusic(
                          backGroundC: const Color.fromARGB(217, 247, 234, 0),
                          icon: Icons.music_note,
                          name: "MUSIC",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MusicView(),
                              ),
                            );
                          },
                          iconTextColor: Colors.black,
                        ),
                        SizedBox(width: 8),
                        ButtonCallVideoMusic(
                          backGroundC: const Color.fromARGB(255, 165, 143, 224),
                          icon: Icons.video_camera_front,
                          name: "VIDEO",
                          onTap: () {},
                          iconTextColor: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 36),
                    HungaryWidget(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
