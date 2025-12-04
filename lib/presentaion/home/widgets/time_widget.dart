import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffA5D6A7),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/sun.png'),

            backgroundColor: Colors.white,
          ),
          SizedBox(width: 12),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    "Good Morning, David, Breakfast Time",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    "7am - 12pm",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Text(
                    "Now",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(height: 12),
                Icon(Icons.fastfood_outlined, color: Colors.black, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimeWidget2 extends StatelessWidget {
  const TimeWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF4D4C3),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30, // choose any size
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                'assets/images/run.png',
                fit: BoxFit.contain, // show full image
                width: 60,
                height: 60,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    "Afternoon",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    "7am - 12pm",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Text(
                    "Now",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(height: 12),
                Icon(Icons.fastfood_outlined, color: Colors.black, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimeWidget3 extends StatelessWidget {
  const TimeWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffD9D4F0),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/moon.png'),
            backgroundColor: Color(0xff292C69),
          ),
          SizedBox(width: 12),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    "Bedtime",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    "7am - 12pm",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Text(
                    "Now",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(height: 12),
                Icon(Icons.fastfood_outlined, color: Colors.black, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
