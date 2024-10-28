// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hr_bot_app/cv%20creation%20page/choose_template.dart';

class CVConsctructorScreen extends StatelessWidget {
  const CVConsctructorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'You chose CV Constructor ',
                          style: TextStyle(
                              fontSize: 33, fontFamily: 'Aldrich', height: 1),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Here You can modify the content of the fields',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'Aldrich', height: 1),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Full Name',
                              ),
                              constructorTextField(text: 'Enter full name...')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Position',
                              ),
                              constructorTextField(text: 'Enter position...')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Education',
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Row(
                                children: [
                                  constructorLabel(
                                    text: 'KBTU',
                                  ),
                                  constructorLabel(
                                    text: 'AITU',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Experience',
                              ),
                              SizedBox(),
                              Row(
                                children: [
                                  constructorLabel(
                                    text: 'KBTU',
                                  ),
                                  constructorLabel(
                                    text: 'AITU',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Languages',
                              ),
                              SizedBox(),
                              Row(
                                children: [
                                  constructorLabel(
                                    text: 'English',
                                  ),
                                  constructorLabel(
                                    text: 'Kazakh',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Skills',
                              ),
                              SizedBox(),
                              Row(
                                children: [
                                  constructorLabel(
                                    text: 'Python',
                                  ),
                                  constructorLabel(
                                    text: 'Git',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              constructorField(
                                text: 'Phone',
                              ),
                              SizedBox(),
                              constructorLabel(
                                text: '+7 777 012 16 87',
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChooseTemplatePage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "DONE",
                                style: TextStyle(
                                    fontFamily: 'Aldrich', fontSize: 50),
                              ),
                              Image.asset(
                                'assets/start.png',
                                height: 32,
                                width: 42,
                              )
                            ],
                          ),
                        ),
                      ]),
                ))));
  }
}

class constructorLabel extends StatelessWidget {
  String text;
  constructorLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Makes the Row take minimum width
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisSize: MainAxisSize
                    .min, // Ensures the inner Row takes minimum width
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.clear,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class constructorTextField extends StatelessWidget {
  String text;
  constructorTextField({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        cursorWidth: 2.0, // Customize cursor width
        style: TextStyle(
          fontSize: 16, // Customize font size
          color: Colors.black, // Customize text color
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 10, vertical: 8), // Padding inside TextField
          hintText: text, // Placeholder text
          hintStyle: TextStyle(color: Colors.grey), // Customize hint text
          border: InputBorder.none, // Removes default TextField border
        ),
      ),
    );
  }
}

class constructorField extends StatelessWidget {
  String text;
  constructorField({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(text),
      ),
    );
  }
}
