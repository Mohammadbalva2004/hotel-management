import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/reserved_the_table/booking_success.dart';
import '../widgets/common_code_table.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String? selectedTable = "";

  final List<String> times = [
    '05:00 PM',
    '06:00 PM',
    '07:00 PM',
    '08:00 PM',
    '09:00 PM',
    '10:00 PM',
    '11:00 PM',
    '12:00 AM',
    '01:00 AM',
    '02:00 AM',
  ];

  final List<String> tabs = [
    "Indoor",
    "Outdoor",
    "Rooftop",
    "Balcony",
    "Indoor(A.C)",
  ];
  int selectedIndex = -1;
  int selectedTab = 0;
  String selectedCategory = "Indoor";

  void setSelectedTable(String tableValue) {
    setState(() {
      selectedTable = tableValue;
    });
  }

  Map<String, List<Widget>> get tableLayouts {
    return {
      "Indoor": [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCard(
                label: "01",
                tableType: 2,
                labelColor: Colors.deepOrange,
                tableSelector: setSelectedTable,
              ),
              CustomCard(
                label: "02",
                tableType: 2,
                labelColor: Colors.pink,
                tableSelector: setSelectedTable,
              ),
              CustomCard(
                label: "03",
                tableType: 2,
                labelColor: Colors.deepOrange,
                tableSelector: setSelectedTable,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        label: "04",
                        tableType: 4,
                        labelColor: Colors.green,
                        tableSelector: setSelectedTable,
                      ),
                      SizedBox(height: 10),
                      CustomCard(
                        label: "05",
                        tableType: 4,
                        labelColor: Colors.pink,
                        tableSelector: setSelectedTable,
                      ),
                      SizedBox(height: 10),
                      CustomCard(
                        label: "06",
                        tableType: 4,
                        labelColor: Colors.deepOrange,
                        tableSelector: setSelectedTable,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      CustomCard(
                        label: "07",
                        tableType: 8,
                        labelColor: Colors.deepOrange,
                        tableSelector: setSelectedTable,
                      ),
                      SizedBox(height: 5),
                      CustomCard(
                        label: "08",
                        tableType: 8,
                        labelColor: Colors.green,
                        tableSelector: setSelectedTable,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      CustomCard(
                        label: "09",
                        tableType: 4,
                        labelColor: Colors.green,
                        tableSelector: setSelectedTable,
                      ),
                      SizedBox(height: 10),
                      CustomCard(
                        label: "10",
                        tableType: 4,
                        labelColor: Colors.pink,
                        tableSelector: setSelectedTable,
                      ),
                      SizedBox(height: 15),
                      CustomCard(
                        label: "11",
                        tableType: 4,
                        labelColor: Colors.deepOrange,
                        tableSelector: setSelectedTable,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(
                    label: "12",
                    tableType: 2,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "13",
                    tableType: 2,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "14",
                    tableType: 2,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      "Outdoor": [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Column(
                spacing: 10,
                children: [
                  CustomCard(
                    label: "01",
                    tableType: 4,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "02",
                    tableType: 4,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "03",
                    tableType: 4,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "04",
                    tableType: 4,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 45),

              Column(
                spacing: 20,
                children: [
                  CustomCard(
                    label: "05",
                    tableType: 22,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "06",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),

                  CustomCard(
                    label: "07",
                    tableType: 22,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 7),

              Column(
                spacing: 20,
                children: [
                  CustomCard(
                    label: "08",
                    tableType: 22,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "09",
                    tableType: 22,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),

                  CustomCard(
                    label: "10",
                    tableType: 22,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 7),

              Column(
                spacing: 20,
                children: [
                  CustomCard(
                    label: "11",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "12",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),

                  CustomCard(
                    label: "13",
                    tableType: 22,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 7),

              Column(
                spacing: 20,
                children: [
                  CustomCard(
                    label: "14",
                    tableType: 22,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "15",
                    tableType: 22,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),

                  CustomCard(
                    label: "16",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      "Rooftop": [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Column(
                spacing: 5,
                children: [
                  CustomCard(
                    label: "01",
                    tableType: 8,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "02",
                    tableType: 8,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "03",
                    tableType: 8,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 20),

              Column(
                spacing: 10,
                children: [
                  CustomCard(
                    label: "04",
                    tableType: 22,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),

                  CustomCard(
                    label: "05",
                    tableType: 22,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "06",
                    tableType: 22,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 5),

              Column(
                spacing: 10,
                children: [
                  CustomCard(
                    label: "07",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),

                  CustomCard(
                    label: "08",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "09",
                    tableType: 22,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
              SizedBox(width: 20),

              Column(
                spacing: 5,
                children: [
                  CustomCard(
                    label: "10",
                    tableType: 8,
                    labelColor: Colors.green,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "11",
                    tableType: 8,
                    labelColor: Colors.deepOrange,
                    tableSelector: setSelectedTable,
                  ),
                  CustomCard(
                    label: "12",
                    tableType: 8,
                    labelColor: Colors.pink,
                    tableSelector: setSelectedTable,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      "Balcony": [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 5,
              children: [
                CustomCard(
                  label: "01",
                  tableType: 2,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "02",
                  tableType: 2,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "03",
                  tableType: 2,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "04",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "05",
                  tableType: 2,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "06",
                  tableType: 2,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "07",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "08",
                  tableType: 2,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "09",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                CustomCard(
                  label: "10",
                  tableType: 8,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "11",
                  tableType: 8,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "12",
                  tableType: 8,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                CustomCard(
                  label: "13",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "14",
                  tableType: 2,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "15",
                  tableType: 2,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "16",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "17",
                  tableType: 2,
                  labelColor: Colors.green,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "18",
                  tableType: 2,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "19",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "20",
                  tableType: 2,
                  labelColor: Colors.deepOrange,
                  tableSelector: setSelectedTable,
                ),
                CustomCard(
                  label: "21",
                  tableType: 2,
                  labelColor: Colors.pink,
                  tableSelector: setSelectedTable,
                ),
              ],
            ),
          ],
        ),
      ],
      "Indoor(A.C)": [
        SizedBox(height: 100),
        Container(
          height: 190,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Sorry!",
                style: GoogleFonts.sahitya(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.pink,
                ),
              ),
              Text(
                "The Table Is Not",
                style: GoogleFonts.sahitya(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
              Text(
                "Availabel",
                style: GoogleFonts.sahitya(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 110,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(tabs.length, (index) {
                    final isSelected = selectedTab == index;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = index;
                            selectedCategory =
                                tabs[index]; 
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.white : Colors.grey[200],
                            border: Border.all(
                              color:
                                  isSelected
                                      ? Colors.green
                                      : Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              if (isSelected)
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 16,
                                ),
                              SizedBox(width: isSelected ? 5 : 0),
                              Text(
                                tabs[index],
                                style: TextStyle(
                                  color:
                                      isSelected ? Colors.green : Colors.black,
                                  fontWeight:
                                      isSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _legendItem(Colors.pink, "Reserved"),
                _legendItem(Colors.deepOrange, "Served"),
                _legendItem(Colors.green, "Available"),
              ],
            ),
            SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: tableLayouts[selectedCategory]!),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Table:",
                          style: GoogleFonts.almendra(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          selectedTable!,
                          style: GoogleFonts.almendra(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          selectedCategory,
                          style: GoogleFonts.almendra(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 60),
                    TextButton(
                      onPressed: () {
                        if (selectedTable != null &&
                            selectedTable!.isNotEmpty &&
                            selectedTable != "None") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookingSuccess(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please select a table before proceeding.",
                              ),
                              backgroundColor: Colors.grey,
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Reserve Table",
                            style: GoogleFonts.almendra(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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

Widget _legendItem(Color color, String text) {
  return Row(
    children: [
      Icon(Icons.circle, size: 13, color: color),
      SizedBox(width: 2),
      Text(text, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
      SizedBox(width: 20),
    ],
  );
}
