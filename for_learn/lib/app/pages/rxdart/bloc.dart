import 'package:rxdart/rxdart.dart';

class BoolBloc {
  final BehaviorSubject<bool> _boolBloc = BehaviorSubject<bool>();
  Stream<bool> get stream$ => _boolBloc.stream;
  bool get value => _boolBloc.value;

  setValue(bool value) => _boolBloc.add(value);
}

class IntBloc {
  final BehaviorSubject<int> _intBloc = BehaviorSubject<int>();
  Stream<int> get stream$ => _intBloc.stream;
  int get value => _intBloc.value;

  setValue(int value) => _intBloc.add(value);
}