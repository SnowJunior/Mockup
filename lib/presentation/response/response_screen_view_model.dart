import 'dart:convert';

import '../../model/todo.dart';
import 'package:http/http.dart' as http;

class ResponseScreenViewModel {

  Future<List<Todo>> fetchTodo() async {
  final List<Todo> todoList = <Todo>[];
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=5'));

    if (response.statusCode == 200) {
      var todoResponse = jsonDecode(response.body);
      for (var item in todoResponse) {
        todoList.add(Todo.fromJson(item));
      }
    }
    return todoList;
  }
}
