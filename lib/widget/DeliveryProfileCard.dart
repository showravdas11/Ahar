import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TotalDeliveryCard extends StatefulWidget {
  const TotalDeliveryCard({super.key});

  @override
  State<TotalDeliveryCard> createState() => _TotalDeliveryCardState();
}

class _TotalDeliveryCardState extends State<TotalDeliveryCard> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.08,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/deliverybg.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          FittedBox(
                            child: Text(
                              '300',
                              style: TextStyle(
                                fontSize: screenWidth * 0.1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Total Delivery',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: screenWidth * 0.3,
                            child: LinearPercentIndicator(
                              lineHeight: 5,
                              progressColor: Colors.white,
                              percent: 0.5,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: screenHeight * 0.06,
                        width: screenHeight * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: FittedBox(
                          child: Icon(
                            Icons.bike_scooter,
                            size: screenHeight * 0.03,
                            color: const Color(0xFF4A5FF7),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          FittedBox(
                            child: Text(
                              '110',
                              style: TextStyle(
                                fontSize: screenWidth * 0.1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Delivered',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: screenWidth * 0.3,
                            child: LinearPercentIndicator(
                              lineHeight: 5,
                              progressColor: Colors.white,
                              percent: 0.5,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
