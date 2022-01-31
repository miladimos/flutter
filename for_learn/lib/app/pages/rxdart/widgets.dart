import 'package:flutter/material.dart';
import 'package:for_learn/app/pages/rxdart/bloc.dart';
import 'package:rxdart/rxdart.dart';

class SwitchWidget extends StatelessWidget {
  SwitchWidget({Key? key}) : super(key: key);

  BoolBloc bBloc = BoolBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bBloc.stream$,
        builder: (context, snapshot) {
          return Switch(
              value: snapshot.data ?? false,
              onChanged: (value) => bBloc.setValue(value));
        });
  }
}

class CheckboxWidget extends StatelessWidget {
  CheckboxWidget({Key? key}) : super(key: key);

  BoolBloc boolBloc = BoolBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: boolBloc.stream$,
        builder: (context, snapshot) {
          return Checkbox(
              value: snapshot.data ?? false,
              onChanged: (value) => boolBloc.setValue(value!));
        });
  }
}

class DropdownWidget extends StatelessWidget {
  List<DropdownMenuItem<int>> items;

  DropdownWidget({Key? key, required this.items}) : super(key: key);

  IntBloc intBloc = IntBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: intBloc.stream$,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return DropdownButton<int>(
          items: items,
          value: snapshot.data ?? 1,
          onChanged: (value) => intBloc.setValue(value!),
        );
      },
    );
  }
}
