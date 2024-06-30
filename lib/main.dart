import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_tracking/cubit/posts_cubit.dart';
import 'package:money_tracking/data/repositories/post_repository.dart';
import 'package:money_tracking/data/services/posts_service.dart';
import 'package:money_tracking/srceens/sample/pagination.dart';
import 'package:money_tracking/srceens/splashcreen.dart';

void main() {
  runApp(MainApp(repository: PostRepository(PostsService())));
}

class MainApp extends StatelessWidget {
  final PostRepository repository;

  const MainApp({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color.fromARGB(255, 0, 100, 0),
        cardColor: const Color.fromARGB(255, 247, 247, 247),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
      ),
      home: BlocProvider(
        create: (context) => PostsCubit(repository),
        child: PostsView(),
      ),
    );
  }
}
