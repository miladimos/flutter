import 'package:flutter/material.dart';
import 'package:whatsapp/app/functions.dart';
import 'package:whatsapp/app/layouts/pages/contacts/contacts_page.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_call, color: Colors.white,),
        onPressed: () => navigateToPage(context, ContactsPage()),
      ),
    );
  }
}
