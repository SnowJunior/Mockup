import 'package:flutter/material.dart';

import '../Constants/color.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  List<String> Dictionary = [
    '34': 'thirty-four', '90': 'ninety',
    '91': 'ninety-one''21': 'twenty-one',
    '61': 'sixty-one', '9': 'nine',
    '2': 'two', '6': 'six', '3': 'three',
    '8': 'eight', '80': 'eighty', '81': 'eighty-one',
    'Ninety-Nine': '99', 'nine-hundred': '900'
  ];

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
                colors: [kPrimary, kSecondary]),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 48.0),
            child: Row(
              children: const [
                Text(
                  "Dictionary",
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
      ],
    );
  }
}
