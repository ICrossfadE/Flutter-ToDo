import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/todo_bloc/todo_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(MyAppToDo());
}

class MyAppToDo extends StatelessWidget {
  MyAppToDo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            surface: Color.fromARGB(255, 255, 255, 255),
            onSurface: Color.fromARGB(255, 51, 51, 51),
            primary: Color.fromARGB(255, 80, 59, 173),
            onPrimary: Color.fromARGB(255, 51, 51, 51),
            secondary: Color.fromARGB(255, 21, 138, 66),
            onSecondary: Color.fromARGB(255, 255, 255, 255)),
      ),
      home: BlocProvider<TodoBloc>(
        create: (context) => TodoBloc()..add(TodoStarted()),
        child: const HomeScreen(),
      ),
    );
  }
}

// backgroundColor: Color.fromARGB(255, 42, 53, 199),