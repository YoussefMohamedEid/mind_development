import 'package:flutter/material.dart';

class HungaryWidget extends StatelessWidget {
  const HungaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 234, 114, 23),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/images/apple.png'),
            fit: BoxFit.contain,
            width: 50,
            height: 50,
          ),
          SizedBox(width: 12),
          Text(
            "I'm hungary!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
