import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Blocs/home.bloc.dart';
import 'package:shopping/ui/android/pages/home.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
