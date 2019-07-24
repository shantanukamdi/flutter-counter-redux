import 'package:redux_counter/models/app_state.dart';

import './counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    isLoading: false,
    count: counterReducer(state.count, action)
  );
}