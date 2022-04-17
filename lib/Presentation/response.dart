import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:interapp/model/todo.dart';
import '../Constants/color.dart';
import 'dart:convert' as convert;

class ResponseScreen extends StatefulWidget {
  const ResponseScreen({Key? key}) : super(key: key);

  @override
  State<ResponseScreen> createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  final List<Todo> _todo = <Todo>[];

  Future fetchTodo() async {
    final response = await http
        .get(Uri.parse('https:jsonplaceholder.typicode.com/todos?_limit=5'));

    var todos = <Todo>[];

    if (response.statusCode == 200) {
      var todosJson = convert.jsonDecode(response.body);
      for (var todoJson in todosJson) {
        todos.add(Todo.fromJson(todoJson));
      }
    }
    return todos;
  }

  @override
  void initState() {
    fetchTodo().then(
      (value) => (_todo.addAll(value)),
    );
    super.initState();
  }

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
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
            itemCount: _todo.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _todo[index].title,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      _todo[index].userId.toString(),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      _todo[index].id.toString(),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      _todo[index].completed.toString(),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
              );
            })
      ],
    );
  }
}
