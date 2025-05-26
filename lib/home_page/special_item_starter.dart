import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialItemStarter extends StatefulWidget {
  const SpecialItemStarter({super.key});

  @override
  State<SpecialItemStarter> createState() => _SpecialItemStarterState();
}

class _SpecialItemStarterState extends State<SpecialItemStarter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,

        title: Text(
          "Today's Special Items....",
          style: GoogleFonts.blackAndWhitePicture(
            color: Colors.green,
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/homee.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Garlic Mashed Potatoes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Potatoes With Garlic.   ",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      "    \$08.00",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/home.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Column(
                          children: [
                            Text(
                              " Grilled Salmon With",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "  Lemon Butter Sauce",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          " Chilled shrimp with cocktail.   ",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      "  \$10.50",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/menue.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          " Garlic Bread",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Crispy bread with garlic butter.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      " \$15.99",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/menuee.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          " Caesar Salad",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Romaine lettuce with Caesar.  ",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      " \$13.59",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/menueee.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          " Bruschetta",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Toasted bread with tomato.     ",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      " \$10.00",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/menueeee.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          " Stuffed Mushrooms",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Mushrooms filled with cheese.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      "\$12.87",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/menueeeee.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),
                            Icon(Icons.star, size: 22, color: Colors.black45),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black45,
                              size: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          " Mozzarella Sticks",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Fried cheese with marinara .    ",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Text(
                      " \$09.99",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
