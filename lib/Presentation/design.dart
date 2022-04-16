import 'package:flutter/material.dart';
import 'package:interapp/Constants/color.dart';

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
    return SingleChildScrollView(
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
            height: 20,
          ),
          buildCard()
        ],
      ),
    );
  }
}

Widget buildCard() {
  return Container(
    width: 200,
    height: 200,
    color: Colors.green,
    child: Image.asset("assets/images/ht1.jpeg")
  );
}

// var imageTitles = [
//   "Neuro-link",
//   "JAVES",
//   "Artificial Intelligence",
//   "Archnet",
//   "6G"
// ];
// var carouselImages = [
//   "assets/images/ht1.jpeg"
//       "assets/images/ht2.jpeg"
//       "assets/images/ht3.jpeg"
//       "assets/images/ht4.jpeg"
//       "assets/images/ht5.jpeg"
// ];

// class CarouselSlider extends StatelessWidget {
//   const CarouselSlider({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     PageController controller = PageController(initialPage: 0, viewportFraction: 0.5);

//     List<Widget> banner = <Widget>[];

//     for (int i = 0; i < imageTitles.length; i++) {
//       var itemView = Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.asset(
//             carouselImages[i],
//             fit: BoxFit.cover,
//           )
//         ],
//       );
//       banner.add(itemView);
//     }
//     return SizedBox(
//       width: size.width,
//       height: 100,
//       child: PageView(
//         controller: controller,
//         scrollDirection: Axis.horizontal,
//         children: banner,
//       ),
//     );
//   }
// }
