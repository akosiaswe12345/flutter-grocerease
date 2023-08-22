import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocer_ease_app/repository/todo_repository.dart';
import 'package:grocer_ease_app/todo/cubit/todo_cubit.dart';
import 'package:grocer_ease_app/todo/views/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => TodoCubit(TodoRepository()),
        child: const MaterialApp(
          home: TodoPage(),
        ),
    );
  }
}

