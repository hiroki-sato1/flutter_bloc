import 'dart:async';

class CounterBloc {
  int _counter = 0;

  final StreamController<int> _streamController = StreamController<int>();
  Stream<int> get stream => _streamController.stream;

  void dispose() {
    _streamController.close();
  }

  void incrementCounter() {
    _streamController.sink.add(++_counter);
  }
}
