import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/calculator_imc/bloc/imc_calculator_bloc.dart';
import '../feature/calculator_imc/calculator_imc_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => ImcCalculatorBloc(),
        child: const MyHomePage(),
      ),
    );
  }
}
