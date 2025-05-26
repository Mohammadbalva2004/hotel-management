// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../order_list/order_list.dart';

// class MaincoursesWidget extends StatefulWidget {
//   const MaincoursesWidget({super.key});

//   @override
//   State<MaincoursesWidget> createState() => _MaincoursesWidgetState();
// }

// class _MaincoursesWidgetState extends State<MaincoursesWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           color: Colors.white,
//           child: Column(
//             children: [
//               SizedBox(height: 30),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset(
//                     "assets/images/maincourses.png",
//                     height: 70,
//                     width: 70,
//                   ),
//                   SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(Icons.star, size: 22, color: Colors.black45),
//                           Icon(Icons.star, size: 22, color: Colors.black45),
//                           Icon(Icons.star, size: 22, color: Colors.black45),
//                           Icon(Icons.star, size: 22, color: Colors.black45),

//                           Icon(
//                             Icons.star_half_rounded,
//                             color: Colors.black45,
//                             size: 22,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         " Mix Sabji",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17,
//                         ),
//                       ),
//                       Text(
//                         " Mix sabji with salad.",
//                         style: TextStyle(color: Colors.black45),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 65),
//                   Text(
//                     "\$21.00",
//                     style: TextStyle(
//                       color: Colors.pink,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/maincoursesss.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Veg Pulav",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Veg pulav with Buttermilk.  ",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 20),
//                     Text(
//                       "\$20.00",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/maincoursess.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Palak Paneer",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Palak Paneer with Buttermilk.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 7),
//                     Text(
//                       "\$25.00",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/maincoursessss.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Paneer",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " It's Regular paneer.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 73),
//                     Text(
//                       "\$23.87",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/maincoursesssss.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Dal Fry",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Dal fry with masala Papad.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 22),
//                     Text(
//                       "\$29.99",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/maincoursessssss.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Jeera Rice",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " It' plain jeera Rice.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 77),
//                     Text(
//                       "\$30.50",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/gujthali.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Gujarati thali ",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " It's contain 7 type of variety.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 12),
//                     Text(
//                       "\$22.87",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/punjabi.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Punjabi  thali",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " It's contain 4 type of variety.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "\$28.99",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/pavbhaji.png",
//                       height: 70,
//                       width: 70,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),
//                             Icon(Icons.star, size: 22, color: Colors.black45),

//                             Icon(
//                               Icons.star_half_rounded,
//                               color: Colors.black45,
//                               size: 22,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           " Pav Bhaji",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Spicy and tasty pav bhaji .",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 21),
//                     Text(
//                       "\$26.50",
//                       style: TextStyle(
//                         color: Colors.pink,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 50),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => OrderList()),
//                   );
//                 },
//                 child: Container(
//                   height: 35,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.pink,
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Place Order",
//                       style: GoogleFonts.almendra(
//                         color: Colors.white,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Container(
//                 height: 168,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     Text(
//                       "help@savor-delights.com",
//                       style: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "+1 (999) 1234 567",
//                       style: TextStyle(color: Colors.black54, fontSize: 14),
//                     ),
//                     SizedBox(height: 20),
//                     Image.asset("assets/images/welcomeee.png"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// maincourses_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/order_list/menu_list.dart';
import 'package:untitled/order_list/order_list.dart';

class MainCoursesWidget extends StatefulWidget {
  const MainCoursesWidget({Key? key}) : super(key: key);

  @override
  State<MainCoursesWidget> createState() => _MainCoursesWidgetState();
}

class _MainCoursesWidgetState extends State<MainCoursesWidget> {
  final List<MenuItem> allItems = [
    MenuItem(
      imagePath: "assets/images/maincourses.png",
      title: "Mix Sabji",
      description: "Mix sabji with salad.",
      price: "\$21.00",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/maincoursesss.png",
      title: "Veg Pulav",
      description: "Veg pulav with Buttermilk.",
      price: "\$20.00",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/maincoursess.png",
      title: "Palak Paneer",
      description: "Palak Paneer with Buttermilk.",
      price: "\$25.00",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/maincoursessss.png",
      title: "Paneer",
      description: "It's Regular paneer.",
      price: "\$23.87",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/maincoursesssss.png",
      title: "Dal Fry",
      description: "Dal fry with masala Papad.",
      price: "\$29.99",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/maincoursessssss.png",
      title: "Jeera Rice",
      description: "It' plain jeera Rice.",
      price: "\$30.50",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/gujthali.png",
      title: "Gujarati Thali",
      description: "It's contain 7 type of variety.",
      price: "\$22.87",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/punjabi.png",
      title: "Punjabi Thali",
      description: "It's contain 4 type of variety.",
      price: "\$28.99",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/pavbhaji.png",
      title: "Pav Bhaji",
      description: "Spicy and tasty pav bhaji.",
      price: "\$26.50",
      rating: 4.5,
    ),
  ];

  final List<MenuItem> selectedItems = [];

  void toggleSelection(MenuItem item) {
    setState(() {
      if (selectedItems.contains(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }

  bool isSelected(MenuItem item) => selectedItems.contains(item);

  Widget buildStarRating(double rating) {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool halfStar = (rating - fullStars) >= 0.5;

    for (int i = 0; i < fullStars; i++) {
      stars.add(const Icon(Icons.star, size: 22, color: Colors.black45));
    }
    if (halfStar) {
      stars.add(
        const Icon(Icons.star_half_rounded, size: 22, color: Colors.black45),
      );
    }
    while (stars.length < 5) {
      stars.add(const Icon(Icons.star_border, size: 22, color: Colors.black45));
    }
    return Row(children: stars);
  }

  Widget buildCard(MenuItem item) {
    final bool selected = isSelected(item);

    return GestureDetector(
      onTap: () => toggleSelection(item),
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: selected ? Colors.pink.shade50 : null,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                item.imagePath,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildStarRating(item.rating ?? 0),
                    const SizedBox(height: 5),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      item.description,
                      style: const TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.price,
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (selected)
                    const Icon(Icons.check_circle, color: Colors.pink),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, bottom: 40),
        child: Column(
          children: [
            ...allItems.map(buildCard).toList(),
            const SizedBox(height: 30),
            TextButton(
              onPressed:
                  selectedItems.isEmpty
                      ? null
                      : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    OrderList(selectedItems: selectedItems),
                          ),
                        );
                      },
              child: Container(
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    "Place Order",
                    style: GoogleFonts.almendra(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const Text(
                    "help@savor-delights.com",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "+1 (999) 1234 567",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  Image.asset("assets/images/welcomeee.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
