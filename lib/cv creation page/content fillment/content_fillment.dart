// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hr_bot_app/cv%20creation%20page/content%20fillment/education_filling.dart';
import 'package:hr_bot_app/cv%20creation%20page/resume_constructor.dart';

class ContentFillmentScreen extends StatelessWidget {
  int index;
  ContentFillmentScreen({
    super.key,
    required this.index,
  });

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
                    buildContentLabel(context, "Full name", EducationFillmentScreen()),
                    buildContentLabel(context, "Education", EducationFillmentScreen()),
                    buildContentLabel(context, "Experience", EducationFillmentScreen()),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildContentLabel(context, "Skills", EducationFillmentScreen()),
                    buildContentLabel(context, "Languages", EducationFillmentScreen()),
                    buildContentLabel(context, "Contacts", EducationFillmentScreen()),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResumeConstructor(
                                  index: index,
                                )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
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

Widget buildContentLabel(BuildContext context, String label, Widget fillmentPage) => GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => fillmentPage));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
