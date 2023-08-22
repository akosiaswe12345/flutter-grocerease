import 'package:grocer_ease_app/todo/model/todoModel.dart';

abstract class TodoState {}

class InitTodoState extends TodoState {}

class LoadingTodoState extends TodoState {}

class ErrorTodoState extends TodoState {
  final String message;
  ErrorTodoState(this.message);
}

class ResponseTodoState extends TodoState {
  final List<TodoModel> todosModel;
  ResponseTodoState(this.todosModel);
}