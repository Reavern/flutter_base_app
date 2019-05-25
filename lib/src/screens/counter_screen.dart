import 'package:flutter/material.dart';

// Import Blocs
import 'package:base_flutter_app/src/utils/bloc/bloc_provider.dart';
import 'package:base_flutter_app/src/blocs/counter_bloc.dart';

class CounterScreen extends StatelessWidget {

  final String title;

  CounterScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _bloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: _bloc.counterValue,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data.toString()
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _bloc.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}