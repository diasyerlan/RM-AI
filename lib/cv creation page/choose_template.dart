import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hr_bot_app/cv%20creation%20page/content%20fillment/content_fillment.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseTemplatePage extends StatefulWidget {
  const ChooseTemplatePage({super.key});

  @override
  State<ChooseTemplatePage> createState() => _ChooseTemplatePageState();
}

class _ChooseTemplatePageState extends State<ChooseTemplatePage> {
  final controller = CarouselSliderController();
  int activeIndex = 0;
  final cvImages = ['assets/cv1.png', 'assets/cv2.png', 'assets/cv3.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Choose the template",
                  style: TextStyle(fontFamily: 'Aldrich', fontSize: 33),
                ),
              ),
              CarouselSlider.builder(
                  itemCount: cvImages.length,
                  itemBuilder: ((context, index, realIndex) {
                    final image = cvImages[index];
                    return buildImage(image, index);
                  }),
                  carouselController: controller,
                  options: CarouselOptions(
                      height: 400,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.7,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }))),
              const SizedBox(
                height: 32,
              ),
              buildIndicator(),
              const SizedBox(
                height: 24,
              ),
              buildButtons(activeIndex)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String image, int index) => Container(
        color: Colors.grey,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: cvImages.length,
        effect: const WormEffect(dotWidth: 20, dotHeight: 20),
      );
  void next() => controller.nextPage(duration: const Duration(milliseconds: 500));
  void previous() =>
      controller.previousPage(duration: const Duration(milliseconds: 500));

  Widget buildButtons(int index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: previous,
            child: Container(
              height: 40,
              width: 108,
              decoration: BoxDecoration(
                  color: const Color(0xFFFEF7FF),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  border: Border.all(color: Colors.black, width: 1)),
              child: const Icon(Icons.arrow_back, size: 24),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContentFillmentScreen(index: index)));
            },
            child: Container(
              height: 40,
              width: 108,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                color: const Color(0xFFFEF7FF),
              ),
              child: const Center(
                  child: Text(
                "Keep this one",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          GestureDetector(
            onTap: next,
            child: Container(
              height: 40,
              width: 108,
              decoration: BoxDecoration(
                  color: const Color(0xFFFEF7FF),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  border: Border.all(color: Colors.black, width: 1)),
              child: const Icon(Icons.arrow_forward, size: 24),
            ),
          ),
        ],
      );
}
