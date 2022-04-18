import 'package:flutter/material.dart';
import 'package:interapp/model/values.dart';

import '../constants/color.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  final List<Values> _myDictionary = getSortedDictionary();

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
              colors: [
                kPrimary,
                kSecondary,
              ],
            ),
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                itemCount: _myDictionary.length,
                itemBuilder: (context, index) {
                  var item = _myDictionary[index];
                  return Row(
                    children: [
                      Text(
                        '${item.digits}',
                        style: const TextStyle(
                            fontSize: 18, color: Colors.blueAccent),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        item.words,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
