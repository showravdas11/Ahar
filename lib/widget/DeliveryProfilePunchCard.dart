import 'package:flutter/material.dart';

class DeliveryProfilePunchCard extends StatefulWidget {
  const DeliveryProfilePunchCard({super.key});

  @override
  State<DeliveryProfilePunchCard> createState() =>
      _DeliveryProfilePunchCardState();
}

class _DeliveryProfilePunchCardState extends State<DeliveryProfilePunchCard> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20),
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: Color(0xFF1A2C54),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Punch in at",
                    style: TextStyle(
                        color: Color(0xFFA6C1FF),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "08:10 AM",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "-----------------------------------",
                style: TextStyle(color: Color(0xFFA6C1FF)),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Punch out at",
                    style: TextStyle(
                        color: Color(0xFFA6C1FF),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "08:10 AM",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Attendance",
            style: TextStyle(color: Color(0xFFA6C1FF), fontSize: 16),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF4D7387), // Button color
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
