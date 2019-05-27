import 'package:flutter/material.dart';

// Import Blocs
import 'package:base_flutter_app/src/utils/bloc.dart';
import 'package:base_flutter_app/src/blocs/list_item_bloc.dart';

class ListItemScreen extends StatelessWidget {
  final String title;

  ListItemScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<ListItemBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: StreamBuilder(
              stream: _bloc.listValue,
              builder:
                  (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
                return snapshot.hasData
                    ? buildListView(context, snapshot.data)
                    : Container();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildListView(BuildContext context, List<String> datas) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Center(child: Text(datas[index])),
          ),
        );
      },
    );
  }
}
