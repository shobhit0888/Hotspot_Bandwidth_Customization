import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/api.dart';
import '../helpers/connection.dart';
import '../helpers/constants.dart';
import '../widgtes/no_internet.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "Fetch data";
  bool fetching = false;

  @override
  Widget build(BuildContext context) {
    var connection = Provider.of<Connection>(context);
    connection.initConnectivity();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          connection.hasConnection
              ? Center(
                  child: fetching
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                            onSurface: Colors.grey,
                          ),
                          // color: Colors.green,
                          onPressed: () async {
                            setState(() {
                              fetching = true;
                            });
                            await api.fetchData();
                            setState(() {
                              fetching = false;
                            });
                          },
                          child: Text(
                            text,
                            style: TEXT_STYLE,
                          ),
                        ),
                )
              : Center(child: NoInternet())
        ],
      ),
    );
  }
}
