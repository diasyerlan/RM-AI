import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final Function(int) onTap;
  const MainPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome User',
                style: TextStyle(fontFamily: 'Aldrich', fontSize: 40),
              ),
              Text(
                'Let us introduce you to Recruit ME AI',
                style: TextStyle(fontFamily: 'Aldrich', fontSize: 29),
                textAlign: TextAlign.center,
              ),
              MainPageCard(
                title: 'Resume Creation',
                description:
                    'This is resume constructor service that aimed to create Resume in the most efficient way',
                    onCardTapped: () => onTap(1),
              ),
              MainPageCard(
                title: 'Dream Job AI',
                description:
                    'This service creates the path of your dream job based on the profession you are asking',
                    onCardTapped: () => onTap(2)
                    
              ),
              MainPageCard(
                title: 'Vacancy Searcher',
                description:
                    'This service provides opportunity to find and apply thought out different platforms',
                    onCardTapped: () => onTap(3)
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainPageCard extends StatelessWidget {
  String title;
  String description;
  final VoidCallback onCardTapped;
  MainPageCard({super.key, required this.title, required this.description, required this.onCardTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: Container(
          height: 130,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/icon.png',
                height: 120,
                width: 120,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            description,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Start',
                            style: TextStyle(fontFamily: 'Aldrich', fontSize: 29),
                          ),
                          Image.asset(
                            'assets/start.png',
                            height: 32,
                            width: 42,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
