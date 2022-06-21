import 'package:flutter/material.dart';
import 'package:interapp/model/todo.dart';
import 'package:interapp/presentation/response/response_screen_view_model.dart';
import '../../constants/color.dart';

class ResponseScreen extends StatelessWidget {
  const ResponseScreen({Key? key}) : super(key: key);

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
                Colors.blueAccent,
                Colors.blueAccent,
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
          height: 10,
        ),
        FutureBuilder<List<Todo>>(
            future: ResponseScreenViewModel().fetchTodo(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<Todo> _todoList = snapshot.data!;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      itemCount: _todoList.length,
                      itemBuilder: (context, index) {
                        var todoItem = _todoList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: size.width * .8,
                                    child: Text(
                                      todoItem.title,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        'User ID : ${todoItem.userId}',
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        'Item ID: ${todoItem.id}',
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                ],
                              ),
                              const Spacer(),
                              Icon(
                                todoItem.completed
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: Colors.black,
                                size: 32,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            })
      ],
    );
  }
}
