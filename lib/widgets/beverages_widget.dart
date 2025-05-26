// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:untitled/order_list/order_list.dart';

// class BeveragesWidget extends StatefulWidget {
//   const BeveragesWidget({super.key});

//   @override
//   State<BeveragesWidget> createState() => _BeveragesWidgetState();
// }

// class _BeveragesWidgetState extends State<BeveragesWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           color: Colors.white,
//           child: Column(
//             children: [
//               SizedBox(height: 30),
//               Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/images/mixfruit.png",
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
//                           " Mix Fruit Juice",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Freshness mixed in every sip.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 11),
//                     Text(
//                       "\$10.99",
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
//                       "assets/images/pinapple.png",
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
//                           " Pineapple juice",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Sweet, tangy, fresh pure bliss.  ",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),

//                     Text(
//                       "\$08.59",
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
//                       "assets/images/coconut.png",
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
//                           " Coconut water",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Sip serenity, sip coconut juice.",

//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 3),
//                     Text(
//                       "\$07.00",
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
//                       "assets/images/lemonjuice.png",
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
//                           " Lemon Juice",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Squeeze the day with lemon.",

//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 12),
//                     Text(
//                       "\$10.87",
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
//                       "assets/images/orange.png",
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
//                           " Orange Juice",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Orange burst in every sip.",

//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 33),
//                     Text(
//                       "\$09.99",
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
//                       "assets/images/special.png",
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
//                           " Our Special Drink",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Flavors mixed with pure love.",

//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 8),
//                     Text(
//                       "\$10.50",
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled/order_list/menu_list.dart';
import 'package:untitled/order_list/order_list.dart';

class BeveragesWidget extends StatefulWidget {
  const BeveragesWidget({super.key});

  @override
  State<BeveragesWidget> createState() => _BeveragesWidgetState();
}

class _BeveragesWidgetState extends State<BeveragesWidget> {
  final List<MenuItem> allItems = [
    MenuItem(
      imagePath: "assets/images/mixfruit.png",
      title: "Mix Fruit Juice",
      description: "Freshness mixed in every sip.",
      price: "\$10.99",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/pinapple.png",
      title: "Pineapple Juice",
      description: "Sweet, tangy, fresh pure bliss.",
      price: "\$08.59",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/coconut.png",
      title: "Coconut Water",
      description: "Sip serenity, sip coconut juice.",
      price: "\$07.00",
      rating: 4.0,
    ),
    MenuItem(
      imagePath: "assets/images/lemonjuice.png",
      title: "Lemon Juice",
      description: "Squeeze the day with lemon.",
      price: "\$10.87",
      rating: 4.0,
    ),
    MenuItem(
      imagePath: "assets/images/orange.png",
      title: "Orange Juice",
      description: "Orange burst in every sip.",
      price: "\$09.99",
      rating: 4.5,
    ),
    MenuItem(
      imagePath: "assets/images/special.png",
      title: "Our Special Drink",
      description: "Flavors mixed with pure love.",
      price: "\$10.50",
      rating: 5.0,
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
