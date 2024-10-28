// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EducationFillmentScreen extends StatelessWidget {
  const EducationFillmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Content Fillment',
                style: TextStyle(fontSize: 33, fontFamily: 'Aldrich'),
              ),
              const Text(
                'Education',
                style: TextStyle(fontSize: 33, fontFamily: 'Aldrich'),
              ),
              Container(
                color: Color(0xFFD9D9D9),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          educationLabel1(text: 'University'),
                          educationLabel1(text: 'Years'),
                          educationLabel1(text: 'Speciality'),
                          educationLabel1(text: 'Degree'),
                          educationLabel1(text: 'Passed courses')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          educationLabel2(text: "Add university"),
                          educationLabel2(text: "Add education years"),
                          educationLabel2(text: "Add speciality"),
                          educationLabel2(text: "Specify degree"),
                          educationLabel2(text: "Add courses"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 4)
                ),
                child: Icon(Icons.add, size: 42,),
              ),
              SizedBox(height: 300,),
              GestureDetector(
                  onTap: () {
                    
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
    );
  }
}

class educationLabel1 extends StatelessWidget {
  String text;
   educationLabel1({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: 22, fontFamily: 'Aldrich'));
  }
}

class educationLabel2 extends StatelessWidget {
  String text;
  educationLabel2({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text,
          style: TextStyle(
              fontSize: 16, fontFamily: 'Aldrich', color: Colors.grey)),
    );
  }
}
