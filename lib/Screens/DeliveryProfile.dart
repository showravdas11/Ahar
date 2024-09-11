import 'package:ahar/widget/DeliveryProfileCard.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DeliveryProfile extends StatefulWidget {
  const DeliveryProfile({super.key});

  @override
  State<DeliveryProfile> createState() => _DeliveryProfileState();
}

class _DeliveryProfileState extends State<DeliveryProfile> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final avatarRadius = screenHeight * 0.08;
    final maxAvatarRadius = 80.0;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: screenHeight * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xFFFFA500)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: avatarRadius > maxAvatarRadius
                          ? maxAvatarRadius
                          : avatarRadius,
                      backgroundColor: const Color(0xFF16A637),
                      child: CircleAvatar(
                        radius: (avatarRadius > maxAvatarRadius
                                ? maxAvatarRadius
                                : avatarRadius) -
                            5,
                        backgroundImage:
                            const AssetImage('assets/images/user.png'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    FittedBox(
                      child: Text(
                        "Delivery Time",
                        style: TextStyle(
                          fontSize: screenHeight * 0.03,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              TotalDeliveryCard(),
              Container(
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
                                  fontSize: 12,
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
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "---------------------------------------",
                          style: TextStyle(color: Color(0xFFA6C1FF)),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Punch out at",
                              style: TextStyle(
                                  color: Color(0xFFA6C1FF),
                                  fontSize: 12,
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
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Attendance",
                      style: TextStyle(color: Color(0xFFA6C1FF)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
