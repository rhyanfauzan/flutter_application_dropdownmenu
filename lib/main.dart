import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String nameText = 'Tidak ada nama yang dipilih';
  List<String> names = ['Adipati', 'Ryan', 'Steven', 'Uciha', 'Khaleed'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                DropdownButton(
                    hint: Text('Pilih nama'),
                    isExpanded: true,
                    items: names
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {});
                      nameText = value.toString();
                      print(value);
                    }),
                SizedBox(
                  height: 20,
                ),
                Text(
                  nameText,
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          )),
        ));
  }
}
