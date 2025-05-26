import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/qr_page/welcome_page.dart';

class BookingSuccess extends StatefulWidget {
  const BookingSuccess({super.key});

  @override
  State<BookingSuccess> createState() => _BookingSuccessState();
}

class _BookingSuccessState extends State<BookingSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/images/booking.webp",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Booking",
                  style: GoogleFonts.macondo(
                    shadows: [
                      Shadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.pink,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Completed",
                  style: GoogleFonts.macondo(
                    shadows: [
                      Shadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.pink,
                    fontSize: 49,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Successfully",
                  style: GoogleFonts.macondo(
                    shadows: [
                      Shadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 1,
                      ),
                    ],
                    color: Colors.pink,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Stack(
                  children: [
                    Positioned(
                      child: Icon(
                        Icons.check_circle,
                        size: 105,
                        color: Colors.black38,
                      ),
                    ),
                    Icon(Icons.check_circle, size: 100, color: Colors.pink),
                  ],
                ),

                SizedBox(height: 30),
                Text(
                  "Your table at Savour Delights is booked! "
                  "Thank you for choosing us. "
                  "We look forward to serving you a delightful experience!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(
                    shadows: [
                      Shadow(
                        color: Colors.red,
                        blurRadius: 20,
                        offset: Offset(1, 1),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 15,
                    shadowColor: Colors.pink,
                  ),
                  child: Text(
                    "Back to Home",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
