import 'package:flutter/material.dart';

import '../Constants/color.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {
    List<Values> myDictionary = [
      Values(digits: 34, words: "thirty-four"),
      Values(digits: 90, words: 'ninety'),
      Values(digits: 91, words: 'ninety-one'),
      Values(digits: 21, words: 'twenty-one'),
      Values(digits: 61, words: 'sixty-one'),
      Values(digits: 9, words: 'nine'),
      Values(digits: 2, words: 'two'),
      Values(digits: 6, words: 'six'),
      Values(digits: 3, words: 'three'),
      Values(digits: 8, words: 'eight'),
      Values(digits: 80, words: 'eighty'),
      Values(digits: 81, words: 'eighty-one'),
      Values(words: 'Ninety-Nine', digits: 99),
      Values(words: 'nine-hundred', digits: 900),
    ];

    myDictionary.sort((a, b) => a.digits.compareTo(b.digits));

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
        ListView.builder(
            itemCount: myDictionary.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Text(),
                  ],
                ),
              );
            })
      ],
    );
  }
}

class Values {
  String words;
  int digits;

  Values({required this.digits, required this.words});
}
