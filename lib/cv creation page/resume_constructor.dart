// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hr_bot_app/cv%20creation%20page/content%20fillment/content_fillment.dart';
import 'package:hr_bot_app/cv%20creation%20page/content%20fillment/education_filling.dart';

class ResumeConstructor extends StatelessWidget {
  int index;
  ResumeConstructor({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Resume Constructor',
                style: TextStyle(fontFamily: 'Aldrich', fontSize: 33),
              ),
              Image.asset('assets/cv${index + 1}e.png',
                  height: 415, width: 308),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    height: 32,
                    width: 85,
                    child: Center(
                      child: Text(
                        'Auto Fill',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildContentLabel(context, 'Full Name', EducationFillmentScreen()),
                        buildContentLabel(context, 'Education', EducationFillmentScreen()),
                        buildContentLabel(context, 'Experience', EducationFillmentScreen())
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildContentLabel(context, 'Skills', EducationFillmentScreen()),
                        buildContentLabel(context, 'Content', EducationFillmentScreen()),
                        buildContentLabel(context, 'Languages', EducationFillmentScreen()),
                        buildContentLabel(context, 'Contacts', EducationFillmentScreen())
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
