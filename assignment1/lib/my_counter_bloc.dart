
import 'dart:async';

class MyCounterBloc {
  int counter = 0;

  StreamController<int> counterStreamController = StreamController();

  StreamController<int> timerStreamController = StreamController();


  void incrementCounter() {
    print('Increment');
    counter++;

    counterStreamController.add(counter);
  }

  void decrementCounter() {
    counter--;
  }

  void stertTimer
}
