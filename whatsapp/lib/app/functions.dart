import 'package:flutter/material.dart';

Future<dynamic> navigateToPage(BuildContext context, page) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => page));
}
