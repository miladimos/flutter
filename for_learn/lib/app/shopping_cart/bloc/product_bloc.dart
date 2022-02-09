import 'package:flutter_bloc/flutter_bloc.dart';

//
// enum CounterEvent {
//   increment,
//   decrement,
// }


abstract class BlocState {}

abstract class BlocEvent {}

class ProductBloc extends Bloc<BlocEvent, BlocState> {
  ProductBloc(initialState) : super(initialState);
}
