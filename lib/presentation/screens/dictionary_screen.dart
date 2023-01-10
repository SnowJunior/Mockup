import 'package:flutter/material.dart';
import 'package:interapp/model/values.dart';


// class DictionaryScreen extends StatefulWidget {
//   const DictionaryScreen({Key? key}) : super(key: key);

//   @override
//   State<DictionaryScreen> createState() => _DictionaryScreenState();
// }

// class _DictionaryScreenState extends State<DictionaryScreen> {
//   final List<Values> _myDictionary = getSortedDictionary();

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           height: size.height * 0.1,
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20),
//               bottomRight: Radius.circular(20),
//             ),
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.blueAccent,
//                 Colors.blueAccent,
//               ],
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 28.0, top: 28.0),
//             child: Row(
//               children: const [
//                 Text(
//                   "Dictionary",
//                   style: TextStyle(
//                     fontSize: 34,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: GridView.builder(
//               itemCount: _myDictionary.length,
//               itemBuilder: (context, index) {
//                 var item = _myDictionary[index];
//                 return Center(
//                   child: Row(
//                     children: [
//                       Text(
//                         '${item.digits}',
//                         style: const TextStyle(
//                             fontSize: 18, color: Colors.blueAccent),
//                       ),
//                       const SizedBox(width: 12),
//                       Text(
//                         item.words,
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 4.0,
//                   mainAxisSpacing: 4.0),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }


class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  late final _numeric =
      dictionary.entries.map((e) => int.parse(e.key)).toList();
  late final _alpha = dictionary.entries.map((e) => e.value).toList();
  @override
  void initState() {
    super.initState();
    _alpha.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    _numeric.sort((a, b) => a.compareTo(b));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dictionary.entries.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(_numeric[index].toString()), Text(_alpha[index])],
          ),
        ),
      ),
    );
  }
}

const dictionary = {
  "34": "thirty-four",
  "90": "ninety",
  "91": "ninety-one",
  "61": "sixty-one",
  "9": "nine",
  "2": "two",
  "6": "six",
  "3": "three",
  "8": "eight",
  "80": "eighty",
  "81": "eighty-one",
  "99": "ninety-nine",
  "900": "nine-hundred",
};