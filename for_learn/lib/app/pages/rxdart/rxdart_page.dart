import 'package:flutter/material.dart';
import 'package:for_learn/app/pages/rxdart/widgets.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class RxdartPage extends StatelessWidget {
  const RxdartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rxdart"),
        leading: Switch(
          value: context.watch<ThemeProvider>().currentTheme == themeData.dark,
          onChanged: (value) => context.read<ThemeProvider>().setTheme(value ? themeData.dark : themeData.light),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchWidget(),
            CheckboxWidget(),
            DropdownWidget(items: [
              DropdownMenuItem(child: Text("One"), value: 1,),
              DropdownMenuItem(child: Text("Two"), value: 2,),
              DropdownMenuItem(child: Text("Three"), value: 3,),
            ])
          ],
        ),
      ),
    );
  }
}
