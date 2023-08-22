import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocer_ease_app/todo/cubit/todo_cubit.dart';
import 'package:grocer_ease_app/todo/cubit/todo_state.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<TodoCubit>();
      cubit.fetchTodo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Cubit API CALL'),
      ),
      body: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state){
          if (state is InitTodoState || state is LoadingTodoState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else if (state is ResponseTodoState){
            final todosModel = state.todosModel;
            return ListView.builder(
              itemCount: todosModel.length,
              itemBuilder: (context, index) {
                final todo = todosModel[index];
                return ListTile(
                  title: Text(todo.title),
                );
              }, 
            );
          }else if(state is ErrorTodoState){
            return Center(child: Text(state.message));
          }
          return Center(child: Text(state.toString()),);
        },
      ),
    );
  }
}