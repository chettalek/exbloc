import 'package:exbloc/bloc/data_bloc.dart';
import 'package:exbloc/pages/addapi.dart';
import 'package:exbloc/pages/detailapi.dart';
import 'package:exbloc/pages/editapi.dart';
import 'package:exbloc/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => DataBloc(),
        child: homepage(),
      ),
    );
  }
}
