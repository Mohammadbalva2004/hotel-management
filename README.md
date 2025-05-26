# hoTEL 

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.







import 'package:flutter/material.dart';
import '../widgets/common_code_table.dart';

class BookingPage extends StatefulWidget {
const BookingPage({super.key});

@override
_BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
final List<String> times = [
'05:00 PM', '06:00 PM', '07:00 PM', '08:00 PM', '09:00 PM',
'10:00 PM', '11:00 PM', '12:00 AM', '01:00 AM', '02:00 AM',
];

final List<String> tabs = ["Indoor", "Outdoor", "Rooftop", "Balcony"];

int selectedIndex = -1;
int selectedTab = 0;

final Map<String, List<Widget>> tableLayouts = {
"Indoor": [
CustomCard(label: "01", tableType: 2, labelColor: Colors.deepOrange),
CustomCard(label: "02", tableType: 4, labelColor: Colors.green),
CustomCard(label: "03", tableType: 4, labelColor: Colors.pink),
],
"Outdoor": [],
"Rooftop": [],
"Balcony": [],
};

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Color.fromRGBO(255, 255, 255, 10),
toolbarHeight: 75,
title: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SizedBox(height: 30),
Text("Welcome TO", style: TextStyle(color: Colors.black45)),
Text(
"Delicious Restaurant!",
style: TextStyle(fontWeight: FontWeight.w900),
),
],
),
),
body: Container(
color: Colors.white,
child: Column(
children: [
Padding(
padding: const EdgeInsets.symmetric(horizontal: 15),
child: Container(
height: 110,
child: SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 15),
child: Container(
width: times.length * 75,
child: Stack(
children: [
Positioned(
left: 0,
right: 0,
top: 35,
child: Divider(
color: Colors.grey[300],
thickness: 2,
),
),
Positioned.fill(
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: List.generate(times.length, (index) {
return GestureDetector(
onTap: () {
setState(() {
selectedIndex = index;
});
},
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(
Icons.circle,
color:
selectedIndex == index
? Colors.pink
: Colors.grey[400],
size: 15,
),
SizedBox(height: 10),
Text(
times[index],
style: TextStyle(
fontSize: 11,
fontWeight: FontWeight.bold,
color:
selectedIndex == index
? Colors.pink
: Colors.black45,
),
),
],
),
);
}),
),
),
],
),
),
),
),
),
),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(tabs.length, (index) {
                final isSelected = selectedTab == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white : Colors.grey[200],
                      border: Border.all(
                        color: isSelected ? Colors.green : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        if (isSelected)
                          Icon(Icons.check, color: Colors.green, size: 16),
                        SizedBox(width: isSelected ? 5 : 0),
                        Text(
                          tabs[index],
                          style: TextStyle(
                            color: isSelected ? Colors.green : Colors.black,
                            fontWeight:
                            isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),

            SizedBox(height: 20),

            if (selectedTab == 0) ...tableLayouts["Indoor"]!,
            if (selectedTab != 0)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "No tables available for ${tabs[selectedTab]}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
}
}
