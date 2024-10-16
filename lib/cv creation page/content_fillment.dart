import 'package:flutter/material.dart';

class ContentFillmentScreen extends StatelessWidget {
  const ContentFillmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Content Fillment',
                  style: TextStyle(fontSize: 33, fontFamily: 'Aldrich'),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildContentLabel("Full name"),
                    buildContentLabel("Education"),
                    buildContentLabel("Experience"),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildContentLabel("Skills"),
                    buildContentLabel("Languages"),
                    buildContentLabel("Contacts"),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "DONE",
                        style: TextStyle(fontFamily: 'Aldrich', fontSize: 50),
                      ),
                      Image.asset(
                        'assets/start.png',
                        height: 32,
                        width: 42,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildContentLabel(String label) => GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
