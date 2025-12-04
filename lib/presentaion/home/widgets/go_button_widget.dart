
import 'package:flutter/material.dart';

class ButtonCallVideoMusic extends StatelessWidget {
  const ButtonCallVideoMusic({
    super.key,
    required this.backGroundC,
    required this.icon,
    required this.name,
    required this.onTap, required this.iconTextColor,
  });
  final Color backGroundC;
  final Color iconTextColor;
  final IconData icon;
  final String name;
  final void Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 120,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backGroundC,
          ),
          child: Column(
            children: [
              Expanded(child: Icon(icon, color: iconTextColor, size: 42)),
              SizedBox(height: 4),
              FittedBox(
                child: Text(
                  name,
                  style: TextStyle(
                    color: iconTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
