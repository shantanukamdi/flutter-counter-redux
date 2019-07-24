import 'package:flutter/material.dart';
import 'package:redux_counter/containers/counter/counter.dart';
import 'package:redux_counter/containers/counter/increase_counter.dart';


class HomePage extends StatelessWidget {

  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times'),
              Counter()
            ],
          ),
        ),
      ),
      floatingActionButton: IncreaseCounterButton(),
    );
  }
}