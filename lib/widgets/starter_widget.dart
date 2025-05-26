// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:untitled/order_list/order_list.dart';

// class StarterWidget extends StatefulWidget {
//   const StarterWidget({super.key});

//   @override
//   State<StarterWidget> createState() => _StarterWidgetState();
// }

// class _StarterWidgetState extends State<StarterWidget> {
//   Widget buildCard({
//     required String imagePath,
//     required String title,
//     required String subtitle,
//     required String price,
//   }) {
//     return Card(
//       elevation: 3,
//       margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               imagePath,
//               height: 70,
//               width: 70,
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: List.generate(4, (_) => const Icon(Icons.star, size: 22, color: Colors.black45))
//                       ..add(const Icon(Icons.star_half_rounded, color: Colors.black45, size: 22)),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 17,
//                     ),
//                   ),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(color: Colors.black45),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 10),
//             Text(
//               price,
//               style: const TextStyle(
//                 color: Colors.pink,
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 30),
//             buildCard(
//               imagePath: "assets/images/menue.png",
//               title: "Garlic Bread",
//               subtitle: "Crispy bread with garlic butter.",
//               price: "\$15.99",
//             ),
//             buildCard(
//               imagePath: "assets/images/menuee.png",
//               title: "Caesar Salad",
//               subtitle: "Romaine lettuce with Caesar.",
//               price: "\$13.59",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueee.png",
//               title: "Bruschetta",
//               subtitle: "Toasted bread with tomato.",
//               price: "\$10.00",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueeee.png",
//               title: "Stuffed Mushrooms",
//               subtitle: "Mushrooms filled with cheese.",
//               price: "\$12.87",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueeeee.png",
//               title: "Mozzarella Sticks",
//               subtitle: "Fried cheese with marinara.",
//               price: "\$09.99",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueeeeee.png",
//               title: "Shrimp Cocktail",
//               subtitle: "Chilled shrimp with cocktail.",
//               price: "\$10.50",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueeee.png",
//               title: "Stuffed Mushrooms",
//               subtitle: "Mushrooms filled with cheese.",
//               price: "\$12.87",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueeeee.png",
//               title: "Mozzarella Sticks",
//               subtitle: "Fried cheese with marinara.",
//               price: "\$09.99",
//             ),
//             buildCard(
//               imagePath: "assets/images/menueeeeee.png",
//               title: "Shrimp Cocktail",
//               subtitle: "Chilled shrimp with cocktail.",
//               price: "\$10.50",
//             ),
//             const SizedBox(height: 50),
//             TextButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderList()));
//               },
//               child: Container(
//                 height: 35,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: Colors.pink,
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Place Order",
//                     style: GoogleFonts.almendra(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             Container(
//               height: 168,
//               width: double.infinity,
//               color: Colors.white,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "help@savor-delights.com",
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Text(
//                     "+1 (999) 1234 567",
//                     style: TextStyle(color: Colors.black54, fontSize: 14),
//                   ),
//                   const SizedBox(height: 20),
//                   Image.asset("assets/images/welcomeee.png"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// starter_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/order_list/menu_list.dart';
import 'package:untitled/order_list/order_list.dart';

class StarterWidget extends StatefulWidget {
  const StarterWidget({super.key});

  @override
  State<StarterWidget> createState() => _StarterWidgetState();
}

class _StarterWidgetState extends State<StarterWidget> {
  final List<MenuItem> allItems = [
    MenuItem(
      imagePath: "assets/images/menue.png",
      title: "Garlic Bread",
      description: "Crispy bread with garlic butter.",
      price: "\$15.99",
    ),
    MenuItem(
      imagePath: "assets/images/menuee.png",
      title: "Caesar Salad",
      description: "Romaine lettuce with Caesar.",
      price: "\$13.59",
    ),
    MenuItem(
      imagePath: "assets/images/menueee.png",
      title: "Bruschetta",
      description: "Toasted bread with tomato.",
      price: "\$10.00",
    ),
  ];

  final List<MenuItem> selectedItems = [];

  Widget buildCard(MenuItem item) {
    final bool isSelected = selectedItems.contains(item);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedItems.remove(item);
          } else {
            selectedItems.add(item);
          }
        });
      },
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        // color: isSelected ? Colors.pink.shade50 : null,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.imagePath, height: 70, width: 70),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List.generate(
                        4,
                        (_) => const Icon(
                          Icons.star,
                          size: 22,
                          color: Colors.black45,
                        ),
                      )..add(
                        const Icon(
                          Icons.star_half_rounded,
                          color: Colors.black45,
                          size: 22,
                        ),
                      ),
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
                  if (isSelected)
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
        child: Column(
          children: [
            const SizedBox(height: 20),
            ...allItems.map(buildCard).toList(),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {
                if (selectedItems.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => OrderList(selectedItems: selectedItems),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please select at least one item'),
                    ),
                  );
                }
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
          ],
        ),
      ),
    );
  }
}
