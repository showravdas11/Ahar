import 'package:ahar/Utils/Mythem.dart';
import 'package:ahar/widget/DeliveryList.dart';
import 'package:ahar/widget/DeliveryProfileCard.dart';
import 'package:ahar/widget/DeliveryProfilePunchCard.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DeliveryProfile extends StatefulWidget {
  final List<Map<String, dynamic>> deliveries = [
    {
      "name": "Courtney Henry",
      "foodItem": "Chicken Burger",
      "time": "1:30 PM",
      "distance": "06 min, 950 m",
      "image": "assets/images/burger.png"
    },
    {
      "name": "Darrell Steward",
      "foodItem": "Chicken Pizza",
      "time": "1:30 PM",
      "distance": "06 min, 950 m",
      "image": "assets/images/burger.png"
    },
    {
      "name": "Theresa Webb",
      "foodItem": "Chicken Roll",
      "time": "1:30 PM",
      "distance": "06 min, 950 m",
      "image": "assets/images/burger.png"
    },
    {
      "name": "Albert Flores",
      "foodItem": "Chicken Rice",
      "time": "1:30 PM",
      "distance": "06 min, 950 m",
      "image": "assets/images/burger.png"
    },
  ];

  DeliveryProfile({super.key});

  @override
  State<DeliveryProfile> createState() => _DeliveryProfileState();
}

class _DeliveryProfileState extends State<DeliveryProfile> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    final avatarRadius = screenHeight * 0.08;
    final maxAvatarRadius = 80.0;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: screenHeight * 0.3,
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
                  FittedBox(
                    child: Text(
                      "Delivery Name",
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
            const TotalDeliveryCard(),
            const SizedBox(height: 10),
            const DeliveryProfilePunchCard(),
            const SizedBox(height: 10),

            // Delivery List Section
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                  itemCount: widget.deliveries.length,
                  itemBuilder: (context, index) {
                    return DeliveryCard(
                      name: widget.deliveries[index]['name'],
                      foodItem: widget.deliveries[index]['foodItem'],
                      time: widget.deliveries[index]['time'],
                      distance: widget.deliveries[index]['distance'],
                      image: widget.deliveries[index]['image'],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
