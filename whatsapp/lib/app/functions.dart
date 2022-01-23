import 'package:flutter/material.dart';

Future<dynamic> navigateToPage(BuildContext context, page) async{
  return await Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => page));
}


Future<dynamic> navigatoToPageRoute(BuildContext context, String route) async {
  return await Navigator.pushNamed(context, route);
}