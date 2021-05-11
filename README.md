# flutter_mobx_management

A new Flutter project.

```yaml
  mobx: ^2.0.1
  mobx_codegen: ^2.0.1+3
  flutter_mobx: ^2.0.0
  build_runner: ^2.0.2
```
Create .g.dart file
```
flutter packages pub run build_runner watch
```

```dart

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
}
```
Main
```dart
 final counter = Counter();

 Observer(
     build: (_)=>Text('${counter.counter}');
 )
 Button(
     onPressed: () => counter.increment(),
 )
 Button(
     onPressed: () => counter.decrease(),
 )
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
