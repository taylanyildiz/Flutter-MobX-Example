import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class Counter = _CounterStore with _$Counter;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrease() {
    counter--;
  }

  @computed
  String get state => counter % 2 == 0 ? 'true' : ' false';
}
