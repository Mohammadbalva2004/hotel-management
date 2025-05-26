import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/home_page/menu_page.dart';
import 'package:untitled/home_page/special_item_maincourse.dart';
import 'package:untitled/home_page/special_item_starter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.05),

            SizedBox(height: 10),
            Center(
              child: Text(
                "Welcome To",
                style: GoogleFonts.abhayaLibre(
                  color: Colors.black45,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              "Savour Delights Restaurant!",
              style: GoogleFonts.abhayaLibre(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "We're happy to serve you delicious food.",
                style: GoogleFonts.abhayaLibre(
                  color: Colors.black45,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.05),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Color.fromRGBO(240, 244, 246, 0.96),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today's Specials:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SpecialItemStarter(),
                              ),
                            );
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.pink,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.pink,
                              decorationThickness: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),

                    Row(
                      children: [
                        Image.asset(
                          "assets/images/home.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "145 people ordered",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "Grilled Salmon with Lemon\nButter Sauce",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$15.99",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "\$16.99",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),

                    // Second Special
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/homee.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "126 people ordered",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                "Most Popular Chef’s Signature\ngarlic mashed potatoes",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$18.99",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "\$20.00",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.04),
                  ],
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(0, -20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Today's Specials:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => SpecialItemMaincourse(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.pink,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.pink,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Image.asset("assets/images/homeee.png"),
                          SizedBox(height: screenHeight * 0.03),
                          Image.asset("assets/images/homeeee.png"),
                          SizedBox(height: screenHeight * 0.05),

                          Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MenuPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "View Full Menu",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(
                            "Explore our full menu and find",
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            "your favorite dishes.",
                            style: TextStyle(color: Colors.black45),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      color: Color.fromRGBO(240, 244, 246, 1),
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'help@savor-delights.com',
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            '+1 (999) 1234 567',
                            style: TextStyle(color: Colors.black45),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Image.asset("assets/images/welcomeee.png"),
                          SizedBox(height: screenHeight * 0.03),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
