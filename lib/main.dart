import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_counter/pages/home_page.dart';

import './models/app_state.dart';
import './reducers/app_reducer.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  String title = 'MeSuite';

  final store = new Store(
    appReducer,
    initialState: AppState(),
    middleware: [],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: title,
        home: HomePage(this.title),
      ),
    );
  }
}
