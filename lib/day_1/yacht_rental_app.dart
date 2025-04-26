import 'package:flutter/material.dart';

class YachtRentalApp extends StatefulWidget {
  const YachtRentalApp({super.key});

  @override
  State<YachtRentalApp> createState() => _YachtRentalAppState();
}

class _YachtRentalAppState extends State<YachtRentalApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/ob_day_one.jpg', fit: BoxFit.fill),
          Positioned(
            bottom: 20,
            right: 20,
            left: 20,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: Colors.blueGrey,width: 2),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0F2B38),
                    Color(0xFF0F2B38).withAlpha(200),
                    Color(0xFF0F2B38).withAlpha(100),
                    Color(0xFF0F2B38).withAlpha(200),
                    Color(0xFF0F2B38),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Welcome to Rental Yacht',
                      style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Explore Top Deals & Sail into Unforgettable moments',
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
