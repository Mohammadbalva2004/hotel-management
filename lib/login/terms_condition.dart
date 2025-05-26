import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsCondition extends StatefulWidget {
  const TermsCondition({super.key});

  @override
  State<TermsCondition> createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  final List<Map<String, String>> termsSections = [
    {
      "title": "1. Eligibility",
      "body":
          "You must be at least 18 years old or the age of majority in your jurisdiction to use our services. If you're under the required age, you may only use Savour Delights under the supervision of a parent or legal guardian.",
    },
    {
      "title": "2. Account Registration",
      "body":
          "- You agree to provide accurate and complete information during registration.\n"
          "- You are responsible for maintaining the confidentiality of your account credentials.\n"
          "- You must notify us immediately of any unauthorized use of your account.",
    },
    {
      "title": "3. Ordering & Payments",
      "body":
          "- Orders placed through the app are considered offers and are subject to acceptance.\n"
          "- Prices, menu items, and availability are subject to change without notice.\n"
          "- Payment must be completed through our supported methods (e.g., credit/debit cards, UPI, wallet).\n"
          "- Savour Delights reserves the right to cancel or refuse any order.",
    },
    {
      "title": "4. Delivery Policy",
      "body":
          "- Estimated delivery times are provided for convenience only.\n"
          "- We are not liable for delays caused by external factors (e.g., traffic, weather).\n"
          "- If you're not available at the time of delivery, we may cancel the order without a refund.",
    },
    {
      "title": "5. Cancellations & Refunds",
      "body":
          "- You may cancel an order within a limited time after placing it.\n"
          "- Refunds are issued based on the nature of the issue (e.g., incorrect or missing items).\n"
          "- Refund timelines may vary depending on your payment method.",
    },
    {
      "title": "6. User Conduct",
      "body":
          "You agree not to:\n"
          "- Misuse the Platform or attempt unauthorized access.\n"
          "- Post any content that is offensive, illegal, or violates others' rights.\n"
          "- Interfere with the functionality of the app.",
    },
    {
      "title": "7. Intellectual Property",
      "body":
          "All content, including logos, images, and text, is the property of Savour Delights and protected by copyright laws. Unauthorized use is strictly prohibited.",
    },
    {
      "title": "8. Limitation of Liability",
      "body":
          "Savour Delights is not liable for:\n"
          "- Any indirect, incidental, or consequential damages.\n"
          "- Issues related to third-party services or partner restaurants.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "TERMS & CONDITIONS",
          style: GoogleFonts.cabin(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Terms & Conditions for Savor Delights",
              style: GoogleFonts.cabin(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                height: 1.6,
              ),
            ),
            Text(
              "Welcome to Savour Delights! These Terms and Conditions (\"Terms\") govern your use of our mobile application, website, and services (collectively, the \"Platform\"). By accessing or using Savour Delights, you agree to be bound by these Terms.\n",
              style: GoogleFonts.cabin(fontSize: 15, height: 1.6),
            ),
            for (var section in termsSections)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${section["title"]}\n',
                        style: GoogleFonts.cabin(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.8,
                        ),
                      ),
                      TextSpan(
                        text: section["body"],
                        style: GoogleFonts.cabin(
                          fontSize: 15,
                          color: Colors.black87,
                          height: 1.6,
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
