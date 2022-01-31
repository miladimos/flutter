import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:for_learn/app/pages/home_page.dart';

enum NavigationEvents {
  homePageNavigateClick,
  contactPageNavigateClick,
}


class NavigationBloc extends Bloc<NavigationEvents, Widget> {
  NavigationBloc(Widget initialState) : super(initialState);

  // @override
  // Stream<Widget> mapEventToState(NavigationEvents event) async {
  //   if (event == NavigationEvents.homePageNavigateClick) {
  //     yield HomePage();
  //   }
  // }
}