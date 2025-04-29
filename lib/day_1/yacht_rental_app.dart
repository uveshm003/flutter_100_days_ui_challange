import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YachtRentalApp extends StatefulWidget {
  const YachtRentalApp({super.key});

  @override
  State<YachtRentalApp> createState() => _YachtRentalAppState();
}

class _YachtRentalAppState extends State<YachtRentalApp> {
  int currentPage = 0;

  void onNextPressed() {
    currentPage++;
    setState(() {});
  }

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
              height: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: Colors.blueGrey, width: 2),
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
                    SizedBox(height: 10),
                    Text(
                      'Welcome to Rental Yacht',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                    Text(
                      'Explore Top Deals & Sail into Unforgettable moments',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            currentPage = 2;
                            setState(() {});
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        ),
                        Row(
                          children: List.generate(
                            3,
                            (index) => Container(
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                shape:
                                    index == 1
                                        ? BoxShape.rectangle
                                        : BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: onNextPressed,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(
                                Icons.arrow_right_alt_outlined,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
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
