import 'package:flutter/material.dart';
import 'package:untitled/widgets/beverages_widget.dart';
import 'package:untitled/widgets/dessert_widget.dart';
import 'package:untitled/widgets/maincourses_widget.dart';
import 'package:untitled/widgets/starter_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String selectedCategory = "Starters";

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  Widget categoryButton(String category, String imagePath, Color bgColor) {
    bool isSelected = selectedCategory == category;

    return GestureDetector(
      onTap: () => selectCategory(category),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 145,
            width: 100,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
              border:
                  isSelected ? Border.all(color: Colors.red, width: 2) : null,
            ),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Image.asset(imagePath, height: 50),
                const SizedBox(height: 15),
                Text(
                  category,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: isSelected ? Colors.red : Colors.black45,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          if (isSelected)
            Positioned(
              bottom: -9,
              right: 35,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white, // background to cover border
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(1), // a little padding
                child: const Icon(
                  Icons.check_circle,
                  color: Colors.red,
                  size: 25,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget getSelectedCategoryWidget() {
    switch (selectedCategory) {
      case "Starters":
        return const StarterSection();
      case "Main\n Courses":
        return const MainCourseSection();
      case "Desserts":
        return const DessertSection();
      case "Beverages":
        return const BeverageSection();
      default:
        return const StarterSection();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/menu.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Our Menu",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Discover a variety of delectable dishes",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                const Text(
                  "crafted to tantalize your taste buds.",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Transform.translate(
        offset: const Offset(0, -10),
        child: Container(
          height: 628,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(33),
              topLeft: Radius.circular(33),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 200),
                    const Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                // Category Buttons Row
                SizedBox(
                  height: 160,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        categoryButton(
                          "Starters",
                          "assets/images/salad.png",
                          const Color(0xFFF6E3EB),
                        ),
                        const SizedBox(width: 10),
                        categoryButton(
                          "Main\n Courses",
                          "assets/images/chicken.png",
                          const Color(0xFFFDF3D0),
                        ),
                        const SizedBox(width: 10),
                        categoryButton(
                          "Desserts",
                          "assets/images/icecream.png",
                          const Color(0xFFE3F8FE),
                        ),
                        const SizedBox(width: 10),
                        categoryButton(
                          "Beverages",
                          "assets/images/cocktail.png",
                          const Color(0xFFE4F4D2),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(child: getSelectedCategoryWidget()),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StarterSection extends StatelessWidget {
  const StarterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return StarterWidget();
  }
}

class MainCourseSection extends StatelessWidget {
  const MainCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCoursesWidget();
  }
}

class DessertSection extends StatelessWidget {
  const DessertSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DessertWidget();
  }
}

class BeverageSection extends StatelessWidget {
  const BeverageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BeveragesWidget();
  }
}
