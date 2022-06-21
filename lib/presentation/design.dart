import 'package:flutter/material.dart';
import 'package:interapp/constants/color.dart';

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
  return Column(
    children: [
      SizedBox(
        height: 200,
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/ht1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const Text(
        'Robotics',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  );
}
