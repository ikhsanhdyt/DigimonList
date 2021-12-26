import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/ui/pages/digimon_detail.dart';
import 'package:flutter_challenge/ui/pages/digimon_page.dart';

import 'cubit/digimon_list_cubit.dart';
import 'cubit/page_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PageCubit(),
          ),
          BlocProvider(create: (context) => DigimonListCubit())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Digimon List App',
          theme: ThemeData(primaryColor: Colors.white),
          home: DigimonPage(),
        ));
  }
}
