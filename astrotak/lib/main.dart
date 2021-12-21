import 'package:astrotak/bloc/talk_astrologer/astrologer_bloc.dart';
import 'package:astrotak/widgets/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

MultiBlocProvider MyApp() {
  return MultiBlocProvider(
    providers: [
      BlocProvider<AstroBloc>(create: (_) => AstroBloc()),
    ],
    child: const MaterialApp(
        title: 'Astro Tak',
        debugShowCheckedModeBanner: false,
        home: MyHomePage()),
  );
}
