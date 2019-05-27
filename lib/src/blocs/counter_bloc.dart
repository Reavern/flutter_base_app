// RxDart Library
import 'package:rxdart/rxdart.dart';

// Bloc Interface
import 'package:base_flutter_app/src/utils/bloc.dart';

class CounterBloc extends BlocInterface {

  int counter = 0;

  // Controller with default value of 0
  final _counterController = BehaviorSubject<int>.seeded(0);

  // Set counter value
  Function(int) get setCounterValue => _counterController.sink.add;

  // Observe counter value
  Observable<int> get counterValue => _counterController.stream;

  // Increment counter value
  void incrementCounter() {
    setCounterValue(++counter);
  }

  // Dispose all controllers
  void dispose() {
    _counterController.close();
  }
}