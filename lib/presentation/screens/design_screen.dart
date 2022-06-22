import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:interapp/constants/color.dart';

import '../../model/card.dart';

class DesignPage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  DesignPage(
      {Key? key,
      required this.nameController,
      required this.emailController,
      required this.phoneController})
      : super(key: key);

  final String nameController, emailController, phoneController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  colors: [
                    Colors.blueAccent,
                    Colors.blueAccent,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 48.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    const Text(
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
              height: 200,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 20,
            ),
            buildCard()
          ],
        ),
      ),
    );
  }
}

Widget buildCard() {
  return CarouselSlider.builder(
    itemCount: items.length,
    options: CarouselOptions(
      height: 400,
      aspectRatio: 4 / 3,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 1),
      autoPlayAnimationDuration: const Duration(milliseconds: 500),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
    ),
    itemBuilder: (BuildContext context, int index, int realIndex) {
      var displayItem = items[index];
      return SizedBox(
        child: SizedBox(
          height: 200,
          child: Column(children: [
            Text(
              displayItem.title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              child: Image.asset(
                displayItem.assetImage,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            )
          ]),
        ),
      );
    },
  );
}
