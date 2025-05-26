import 'package:flutter/material.dart';
import 'package:untitled/home_page/home_page.dart';
import 'package:untitled/login/login.dart';
import 'package:untitled/order_list/order_list.dart';
import 'package:untitled/qr_page/qr_code_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String selectedButton = "select";

  void _showPopupMenu(BuildContext context, Offset offset) async {
    final selected = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
      items: [
        PopupMenuItem(child: Text('Profile'), value: 'profile'),
        PopupMenuItem(child: Text('My Orders'), value: 'orders'),
        PopupMenuItem(child: Text('Settings'), value: 'settings'),
        PopupMenuItem(child: Text('Log Out'), value: 'logout'),
      ],
    );

    if (selected != null) {
      print("You selected: $selected");

      if (selected == 'logout') {
        _showLogoutConfirmationDialog(context);
      }
      if (selected == 'orders') {}
    }
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Are you sure you want to log out?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel', style: TextStyle(color: Colors.black45)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                ); // Navigate to login screen
              },
              child: Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/welcome.png"),
                      Builder(
                        builder:
                            (context) => IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () async {
                                final RenderBox button =
                                    context.findRenderObject() as RenderBox;
                                final Offset offset = button.localToGlobal(
                                  Offset.zero,
                                );
                                _showPopupMenu(context, offset);
                              },
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70),
                  const Text(
                    'Welcome To',
                    style: TextStyle(fontSize: 25, color: Colors.black45),
                  ),
                  const Text(
                    'Savor Delights',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Experience Our Seamless Ordering System. Simply Scan The QR Code On Your Table To View Our Menu And Place Your Order.',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QrCodePage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.pink,
                          ),
                          child: const Center(
                            child: Text(
                              "Scan QR Code",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.pink,
                          ),
                          child: const Center(
                            child: Text(
                              "Reserve Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'HOW IT WORKS:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 13),
                  const Text(
                    '• Open Your Phone\'s Camera Or QR Code Scanner\n   mobile Application.',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '•  Point Your Camera At The QR Code On Your Table.',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '• Tap the link that appears to view the menu and  \n   special deals for today.',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  const SizedBox(height: 45),
                ],
              ),
            ),
          ),
          Container(
            height: 160,
            width: double.infinity,
            color: const Color.fromRGBO(240, 244, 246, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'help@savor-delights.com',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 5),
                const Text(
                  '+1 (999) 1234 567',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 5),
                Expanded(child: Image.asset("assets/images/welcomeee.png")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
