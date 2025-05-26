import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialItemMaincourse extends StatefulWidget {
  const SpecialItemMaincourse({super.key});

  @override
  State<SpecialItemMaincourse> createState() => _SpecialItemMaincourseState();
}

class _SpecialItemMaincourseState extends State<SpecialItemMaincourse> {
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
              SizedBox(height: 30),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/maincourses.png",
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
                          " Mix Sabji",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Mix sabji with salad.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(width: 65),
                    Text(
                      "\$21.00",
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
                      "assets/images/maincoursesss.png",
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
                          " Veg Pulav",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Veg pulav with Buttermilk.  ",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Text(
                      "\$20.00",
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
                      "assets/images/maincoursess.png",
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
                          " Palak Paneer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Palak Paneer with Buttermilk.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Text(
                      "\$25.00",
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
                      "assets/images/maincoursessss.png",
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
                          " Paneer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " It's Regular paneer.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(width: 73),
                    Text(
                      "\$23.87",
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
                      "assets/images/maincoursesssss.png",
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
                          " Dal Fry",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " Dal fry with masala Papad.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(width: 22),
                    Text(
                      "\$29.99",
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
                      "assets/images/maincoursessssss.png",
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
                          " Jeera Rice",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " It' plain jeera Rice.",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(width: 77),
                    Text(
                      "\$30.50",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
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
