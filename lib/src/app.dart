import 'package:flutter/material.dart';
import 'screens/screens_export.dart';
import 'blocs/blocs_export.dart';

import 'package:base_flutter_app/src/utils/bloc.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: [
        BlocProvider<CounterBloc>(bloc: CounterBloc(),),
        BlocProvider<ListItemBloc>(bloc: ListItemBloc(),)
      ],
      child: buildMainApp(),
    );
  }

  Widget buildMainApp() {
    return MaterialApp(
      title: "Main App",
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Color.fromRGBO(69, 79, 88, 1),
          buttonColor: Color.fromRGBO(57, 214, 143, 1),
          hintColor: Colors.grey,
          backgroundColor: Colors.white,
          disabledColor: Colors.grey),
      home: MenuScreen(),
    );
  }
}
