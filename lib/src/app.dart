import 'package:flutter/material.dart';
import 'screens/screens_export.dart';
import 'blocs/blocs_export.dart';

import 'package:base_flutter_app/src/utils/bloc.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: [
        BlocProvider<CounterBloc>(
          bloc: CounterBloc(),
        ),
        BlocProvider<ListItemBloc>(
          bloc: ListItemBloc(),
        )
      ],
      child: buildMainApp(),
    );
  }

  Widget buildMainApp() {
    return MaterialApp(
      title: "Reavern",
      theme: ThemeData(
        primaryColor: Color(0xFF3F79C4), // 3f79c4 biru
        accentColor: Color(0xFFFFB300), // ffb300 kuning
        buttonColor: Color(0xFF3F79C4),
        disabledColor: Color(0xFFF2F2F2),
        hintColor: Color(0xFFBBBBBB),
        cursorColor: Color(0xFF0D0D0D),
        errorColor: Color(0xFFFB0000),
        backgroundColor: Colors.white,
        fontFamily: 'OpenSans',
      ),
      home: MenuScreen(),
    );
  }
}
