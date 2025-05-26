// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/home_page/menu_page.dart';
// import 'package:untitled/qr_page/welcome_page.dart';
// import '../reserved_the_table/booking_page.dart';

// class OrderList extends StatefulWidget {
//   const OrderList({super.key});

//   @override
//   State<OrderList> createState() => _OrderListState();
// }

// class _OrderListState extends State<OrderList> {
//   int? selectedIndex;
//   String selected = "button";

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => WelcomePage()),
//         );
//         return false;
//       },
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Image.asset("assets/images/orderlist.png"),
//             Padding(
//               padding: const EdgeInsets.only(top: 60, left: 25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Review & Confirm Orders",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w900,
//                       fontSize: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "Check your ordered Dishes detailed with price",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   Text(
//                     "and confirm the orders and checkout. ",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         bottomSheet: Container(
//           height: 628,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Color.fromRGBO(255, 255, 255, 1),
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30),
//               topRight: Radius.circular(30),
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
//                 Divider(color: Colors.black45, height: 1),
//                 SizedBox(height: 20),

//                 buildOrderTile(
//                   0,
//                   "Garlic Bread",
//                   "assets/images/menue.png",
//                   "\$15.99   |   Qty.2",
//                 ),
//                 buildOrderTile(
//                   1,
//                   "Caesar Salad",
//                   "assets/images/menuee.png",
//                   "\$13.59   |   Qty.1",
//                 ),
//                 buildOrderTile(
//                   2,
//                   "Stuffed Mushrooms",
//                   "assets/images/menueeee.png",
//                   "\$12.67   |   Qty.3",
//                 ),
//                 buildOrderTile(
//                   3,
//                   "Bruschetta",
//                   "assets/images/menueee.png",
//                   "\$10.00   |   Qty.2",
//                 ),
//                 SizedBox(height: 25),

//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 5),
//                     decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: Colors.black45),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               hintText: "Enter Coupon Code",
//                               hintStyle: TextStyle(fontSize: 15),
//                               border: InputBorder.none,
//                               contentPadding: EdgeInsets.symmetric(
//                                 vertical: 12,
//                                 horizontal: 10,
//                               ),
//                             ),
//                           ),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.pink,
//                             padding: EdgeInsets.symmetric(horizontal: 20),
//                           ),
//                           child: Text(
//                             "Apply",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),

//                 Divider(color: Colors.black45, height: 1),
//                 SizedBox(height: 25),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Payment Summary",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 22,
//                         ),
//                       ),
//                       SizedBox(height: 30),
//                       Row(
//                         children: [
//                           Text(
//                             "Subtotal",
//                             style: TextStyle(
//                               color: Colors.black45,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(width: 215),
//                           Text(
//                             "\$89.99",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black45,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         children: [
//                           Text(
//                             "Discount",
//                             style: TextStyle(color: Colors.green, fontSize: 16),
//                           ),
//                           SizedBox(width: 215),
//                           Text(
//                             "-\$9.99",
//                             style: TextStyle(fontSize: 16, color: Colors.green),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         children: [
//                           Text(
//                             "Service Charge(4%)",
//                             style: TextStyle(
//                               color: Colors.black45,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(width: 140),
//                           Text(
//                             "\$3.20",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black45,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         children: [
//                           Text(
//                             "GST Tax",
//                             style: TextStyle(
//                               color: Colors.black45,
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(width: 222),
//                           Text(
//                             "\$0.00",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black45,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 25),
//                       Row(
//                         children: [
//                           Text(
//                             "Total",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(width: 240),
//                           Text(
//                             "\$76.80",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 50),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 50,
//                             width: 150,
//                             child: TextButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => MenuPage(),
//                                   ),
//                                 );
//                               },
//                               style: TextButton.styleFrom(
//                                 backgroundColor: Colors.pink,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {},
//                                 child: Text(
//                                   "ADD NEW ITEMS",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           Container(
//                             height: 50,
//                             width: 150,
//                             child: TextButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => BookingPage(),
//                                   ),
//                                 );
//                               },
//                               style: TextButton.styleFrom(
//                                 backgroundColor: Colors.pink,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {},
//                                 child: Text(
//                                   "PLACE ORDER",
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 70),
//                       Center(
//                         child: Column(
//                           children: [
//                             Text(
//                               "help@savor-delights.com",
//                               style: TextStyle(
//                                 color: Colors.black54,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               "+1 (999) 1234 567",
//                               style: TextStyle(
//                                 color: Colors.black54,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             SizedBox(height: 30),
//                             Image.asset("assets/images/welcomeee.png"),
//                             SizedBox(height: 50),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildOrderTile(
//     int index,
//     String title,
//     String imagePath,
//     String subtitle,
//   ) {
//     bool isSelected = selectedIndex == index;

//     return Container(
//       color: isSelected ? Colors.red.shade50 : Colors.transparent,
//       child: ListTile(
//         leading: Image.asset(imagePath),
//         title: Text(
//           title,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: isSelected ? Colors.red : Colors.black,
//           ),
//         ),
//         subtitle: Text(
//           subtitle,
//           style: TextStyle(color: isSelected ? Colors.red : Colors.black45),
//         ),
//         trailing: GestureDetector(
//           onTap: () {
//             setState(() {
//               if (selectedIndex == index) {
//                 selectedIndex = null;
//               } else {
//                 selectedIndex = index;
//               }
//             });
//           },
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 isSelected ? CupertinoIcons.trash : CupertinoIcons.pencil,
//                 color: isSelected ? Colors.red : Colors.black,
//               ),
//               Text(
//                 isSelected ? "Delete" : "Edit",
//                 style: TextStyle(color: isSelected ? Colors.red : Colors.black),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/widgets/starter_widget.dart';

// // Only if you want to use MenuItem here or import it from a common file

// class OrderList extends StatefulWidget {
//   final List<MenuItem> selectedItems;

//   const OrderList({super.key, required this.selectedItems});

//   @override
//   State<OrderList> createState() => _OrderListState();
// }

// class _OrderListState extends State<OrderList> {
//   int? selectedIndex;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Your Order")),
//       body: Column(
//         children: [
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView.builder(
//               itemCount: widget.selectedItems.length,
//               itemBuilder: (context, index) {
//                 final item = widget.selectedItems[index];
//                 final isSelected = selectedIndex == index;

//                 return Container(
//                   color: isSelected ? Colors.red.shade50 : Colors.transparent,
//                   child: ListTile(
//                     leading: Image.asset(item.imagePath, height: 50, width: 50),
//                     title: Text(
//                       item.title,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: isSelected ? Colors.red : Colors.black,
//                       ),
//                     ),
//                     subtitle: Text(
//                       "${item.price}   |   Qty.1",
//                       style: TextStyle(
//                         color: isSelected ? Colors.red : Colors.black45,
//                       ),
//                     ),
//                     trailing: GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedIndex = isSelected ? null : index;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             isSelected
//                                 ? CupertinoIcons.trash
//                                 : CupertinoIcons.pencil,
//                             color: isSelected ? Colors.red : Colors.black,
//                           ),
//                           Text(
//                             isSelected ? "Delete" : "Edit",
//                             style: TextStyle(
//                               color: isSelected ? Colors.red : Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// order_list.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home_page/menu_page.dart';
import 'package:untitled/order_list/menu_list.dart';
import 'package:untitled/qr_page/welcome_page.dart';
import '../reserved_the_table/booking_page.dart';

class OrderList extends StatefulWidget {
  final List<MenuItem> selectedItems;

  const OrderList({super.key, required this.selectedItems});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  int? selectedIndex;
  List<MenuItem> _orderItems = [];

  @override
  void initState() {
    super.initState();
    _orderItems = List.from(widget.selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/images/orderlist.png"),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Review & Confirm Orders",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Check your ordered Dishes detailed with price",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "and confirm the orders and checkout. ",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 628,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
                Divider(color: Colors.black45, height: 1),
                SizedBox(height: 20),

                // Dynamic list of selected items
                ..._orderItems
                    .asMap()
                    .entries
                    .map(
                      (entry) => buildOrderTile(
                        entry.key,
                        entry.value.title,
                        entry.value.imagePath,
                        "\$${entry.value.price}   |   Qty.1",
                      ),
                    )
                    .toList(),

                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black45),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Coupon Code",
                              hintStyle: TextStyle(fontSize: 15),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 10,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          ),
                          child: Text(
                            "Apply",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),

                Divider(color: Colors.black45, height: 1),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Summary",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 30),
                      // Calculate totals based on selected items
                      ..._buildPaymentSummary(),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MenuPage(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                "ADD NEW ITEMS",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 150,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BookingPage(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                "PLACE ORDER",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "help@savor-delights.com",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "+1 (999) 1234 567",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 30),
                            Image.asset("assets/images/welcomeee.png"),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPaymentSummary() {
    double subtotal = _orderItems.fold(0, (sum, item) {
      return sum + double.parse(item.price.replaceAll("\$", ""));
    });

    double discount = 9.99;
    double serviceCharge = subtotal * 0.04;
    double total = subtotal - discount + serviceCharge;

    return [
      Row(
        children: [
          Text(
            "Subtotal",
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
          Spacer(),
          Text(
            "\$${subtotal.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16, color: Colors.black45),
          ),
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: [
          Text("Discount", style: TextStyle(color: Colors.green, fontSize: 16)),
          Spacer(),
          Text(
            "-\$${discount.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: [
          Text(
            "Service Charge(4%)",
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
          Spacer(),
          Text(
            "\$${serviceCharge.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16, color: Colors.black45),
          ),
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: [
          Text(
            "GST Tax",
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
          Spacer(),
          Text("\$0.00", style: TextStyle(fontSize: 16, color: Colors.black45)),
        ],
      ),
      SizedBox(height: 25),
      Row(
        children: [
          Text(
            "Total",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            "\$${total.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ];
  }

  Widget buildOrderTile(
    int index,
    String title,
    String imagePath,
    String subtitle,
  ) {
    bool isSelected = selectedIndex == index;

    return Container(
      color: isSelected ? Colors.red.shade50 : Colors.transparent,
      child: ListTile(
        leading: Image.asset(imagePath),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.red : Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: isSelected ? Colors.red : Colors.black45),
        ),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                _orderItems.removeAt(index);
                selectedIndex = null;
              } else {
                selectedIndex = index;
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSelected ? CupertinoIcons.trash : CupertinoIcons.pencil,
                color: isSelected ? Colors.red : Colors.black,
              ),
              Text(
                isSelected ? "Delete" : "Edit",
                style: TextStyle(color: isSelected ? Colors.red : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
