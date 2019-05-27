// RxDart Library
import 'package:rxdart/rxdart.dart';

// Bloc Interface
import 'package:base_flutter_app/src/utils/bloc.dart';

class ListItemBloc extends BlocInterface {
  List<String> list = ["A", "B", "C", "D"];

  ListItemBloc() {
    list.forEach((data) => this.addListItem(data));
  }

  // Controller with default value of 0
  final _listItemController = BehaviorSubject<List<String>>.seeded([]);

  // Set list value
  Function(List<String>) get setListValue => _listItemController.sink.add;

  // Observe list value
  Observable<List<String>> get listValue => _listItemController.stream;

  // Add list item
  void addListItem(newItem) {
    List<String> newList = _listItemController.value;
    newList.add(newItem);
    setListValue(newList);
  }

  // Dispose all controllers
  void dispose() {
    _listItemController.close();
  }
}
