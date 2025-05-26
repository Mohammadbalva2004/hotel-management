// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../order_list/order_list.dart';

// class DessertWidget extends StatefulWidget {
//   const DessertWidget({super.key});

//   @override
//   State<DessertWidget> createState() => _DessertWidgetState();
// }

// class _DessertWidgetState extends State<DessertWidget> {
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
//                       "assets/images/kalajam.png",
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
//                           " Kala Jam",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Sweetness makes life better.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 14),
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
//                       "assets/images/laddu.png",
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
//                           " Laddu",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Sweet choice always the best.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 4),
//                     Text(
//                       "\$07.59",
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
//                       "assets/images/gulabjamun.png",
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
//                           " Gulab Jamun",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Happiness comes in every bite",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
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
//                       "assets/images/choccake.png",
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
//                           " Chocolate Cake",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Any sweet is a delight.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 52),
//                     Text(
//                       "\$05.87",
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
//                       "assets/images/lassi.png",
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
//                           " lassi",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " One lassi, problem solved.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 26.5),
//                     Text(
//                       "\$05.99",
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
//                       "assets/images/icecream.jpeg",
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
//                           " Ice-Cream",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Let's enjoy every bite.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 58),

//                     Text(
//                       "\$09.50",
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
//                       "assets/images/barfi.png",
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
//                           " Barfi",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Let's enjoy every bite.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 57),

//                     Text(
//                       "\$12.87",
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
//                       "assets/images/indsweet.png",
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
//                           " Indian Sweets",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Let's enjoy every bite.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 57),

//                     Text(
//                       "\$07.99",
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
//                       "assets/images/falooda.png",
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
//                           " Falooda",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                         ),
//                         Text(
//                           " Falooda is the king.",
//                           style: TextStyle(color: Colors.black45),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 70),

//                     Text(
//                       "\$06.50",
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

// dessert_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled/order_list/menu_list.dart';
import 'package:untitled/order_list/order_list.dart';

class DessertWidget extends StatefulWidget {
  const DessertWidget({Key? key}) : super(key: key);

  @override
  State<DessertWidget> createState() => _DessertWidgetState();
}

class _DessertWidgetState extends State<DessertWidget> {
  final List<MenuItem> dessertItems = [
    MenuItem(
      imagePath: "assets/images/kalajam.png",
      title: "Kala Jam",
      description: "Sweetness makes life better.",
      price: "\$10.99",
    ),
    MenuItem(
      imagePath: "assets/images/laddu.png",
      title: "Laddu",
      description: "Sweet choice always the best.",
      price: "\$07.59",
    ),
    MenuItem(
      imagePath: "assets/images/gulabjamun.png",
      title: "Gulab Jamun",
      description: "Happiness comes in every bite",
      price: "\$10.99",
    ),
    MenuItem(
      imagePath: "assets/images/choccake.png",
      title: "Chocolate Cake",
      description: "Any sweet is a delight.",
      price: "\$05.87",
    ),
    MenuItem(
      imagePath: "assets/images/lassi.png",
      title: "Lassi",
      description: "One lassi, problem solved.",
      price: "\$05.99",
    ),
    MenuItem(
      imagePath: "assets/images/icecream.jpeg",
      title: "Ice-Cream",
      description: "Let's enjoy every bite.",
      price: "\$09.50",
    ),
    MenuItem(
      imagePath: "assets/images/barfi.png",
      title: "Barfi",
      description: "Let's enjoy every bite.",
      price: "\$12.87",
    ),
    MenuItem(
      imagePath: "assets/images/indsweet.png",
      title: "Indian Sweets",
      description: "Let's enjoy every bite.",
      price: "\$07.99",
    ),
    MenuItem(
      imagePath: "assets/images/falooda.png",
      title: "Falooda",
      description: "Falooda is the king.",
      price: "\$06.50",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            // List of dessert cards
            ...dessertItems.map((item) {
              final selected = isSelected(item);
              return GestureDetector(
                onTap: () => toggleSelection(item),
                child: Card(
                  color: selected ? Colors.pink.shade50 : null,
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(item.imagePath, height: 70, width: 70),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 22,
                                    color: Colors.black45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 22,
                                    color: Colors.black45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 22,
                                    color: Colors.black45,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 22,
                                    color: Colors.black45,
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    size: 22,
                                    color: Colors.black45,
                                  ),
                                ],
                              ),
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
                        Column(
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
                              const Icon(
                                Icons.check_circle,
                                color: Colors.pink,
                                size: 26,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),

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
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    "Place Order",
                    style: GoogleFonts.almendra(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

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
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
