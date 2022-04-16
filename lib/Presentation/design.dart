import 'package:flutter/material.dart';
import 'package:interapp/Constants/color.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DesignPage extends StatelessWidget {
  const DesignPage(
      {Key? key,
      required this.nameController,
      required this.emailController,
      required this.phoneController})
      : super(key: key);

  final String nameController, emailController, phoneController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [kPrimary, kSecondary],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 48.0),
            child: Row(
              children: const [
                Text(
                  "Design",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Column(
                children: [
                  Text(
                    "Name: $nameController",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email: $emailController",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phone: $phoneController",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: const EdgeInsets.all(20),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.green, width: 1),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const CarouselSlider()
      ],
    );
  }
}

class CarouselSlider extends StatefulWidget {
  const CarouselSlider(
      {Key? key, CarouselOptions? options, List<Widget>? items})
      : super(key: key);

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  int _current = 0;

  final List<String> images = [
    "assets/images/ht1.jpeg"
        "assets/images/ht2.jpeg"
        "assets/images/ht3.jpeg"
        "assets/images/ht4.jpeg"
        "assets/images/ht5.jpeg"
  ];

  final List<String> names = [
    "Neuro-link"
        "JAVES"
        "Artificial Intelligence"
        "Archnet"
        "6G"
  ];

  List<Widget> generateImageTiles() {
    return images
        .map((value) => ClipRRect(
              child: Image.asset(
                value,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.5,
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImageTiles(),
            options: CarouselOptions(),
          ),
        ],
      ),
    );
  }
}
