import 'package:flutter/material.dart';
import 'package:hr_bot_app/cv%20creation%20page/choose_template.dart';
import 'package:hr_bot_app/cv%20creation%20page/cv%20constructor/cv_constructor.dart';

class CvCreationScreen extends StatelessWidget {
  const CvCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                "CV Creation",
                style: TextStyle(fontFamily: 'Aldrich', fontSize: 50),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChooseTemplatePage()));
                        },
                        child: const Row(
                          children: [
                            Text("Create CV",
                                style: TextStyle(
                                    fontFamily: 'Aldrich', fontSize: 40)),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Row(
                        children: [
                          Text("Upload CV",
                              style: TextStyle(
                                  fontFamily: 'Aldrich', fontSize: 40)),
                          Spacer(),
                          Icon(
                            Icons.upload,
                            size: 40,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CVConsctructorScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Row(
                        children: [
                          Text("Constructor",
                              style: TextStyle(
                                  fontFamily: 'Aldrich', fontSize: 40)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Container(
                      color: const Color(0xFFD9D9D9),
                      height: 310,
                      width: 334,
                      child: const Center(
                        child: Text("CV Templates"),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
