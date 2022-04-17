import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:interapp/model/todo.dart';
import '../Constants/color.dart';
import 'dart:convert' as convert;

Future Todos() async {
  final response = await http
      .get(Uri.parse('https:jsonplaceholder.typicode.com/todos?_limit=5'));

  // var jsonData = convert.jsonDecode(response.body);
  

  if (response.statusCode == 200) {
    return Todo.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception("Failed to load todo");
  }
}

class ResponseScreen extends StatefulWidget {
  const ResponseScreen({Key? key}) : super(key: key);

  @override
  State<ResponseScreen> createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
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
                  "Response",
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
        SizedBox(
          child: Card(
            child: FutureBuilder(
                future: Todos(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const SizedBox(
                      child: Center(
                        child: Text("Loading Todo"),
                      ),
                    );
                  } else {
                    return ListView.builder(
                        // itemCount: snapshot.data!.length,
                        itemBuilder: (context, i) {
                          return const ListTile(
                            title: Text(''),
                            subtitle:  Text(""),
                          );
                        });
                  }
                }),
          ),
        )
      ],
    );
  }
}
