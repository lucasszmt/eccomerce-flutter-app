import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/ui/android/pages/tabs.page.dart';

import 'Blocs/cart.bloc.dart';
import 'Blocs/home.bloc.dart';
import 'Blocs/user.bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeBloc(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartBloc(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Shopping Cart',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(length: 3, child: TabsPage()),
      ),
    );
  }
}
