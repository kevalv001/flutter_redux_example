import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'logic/reducers.dart';
import 'screen/my_home_screen.dart';

void main() {
  final store = Store<int>(counterReducer, initialState: 0);
  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  final Store<int> store;

  const MyApp({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        title: "Redux App",
        home: const MyHomeScreen(),
      ),
    );
  }
}
