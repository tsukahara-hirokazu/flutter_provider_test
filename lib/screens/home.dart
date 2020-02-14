import 'package:flutter/material.dart';
import 'package:guuchiru_app/providers/counter.dart';
import 'package:guuchiru_app/providers/counter10.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                "${Provider.of<Counter>(context).count + Provider.of<Counter10>(context).count10}",
                style: TextStyle(
                  fontSize: 20.0,
                )),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () =>
                  Provider.of<Counter>(context, listen: false).increment(),
              child: Text("+1"),
            ),
            RaisedButton(
              onPressed: () =>
                  Provider.of<Counter>(context, listen: false).decrement(),
              child: Text("-1"),
            ),
            RaisedButton(
              onPressed: () =>
                  Provider.of<Counter10>(context, listen: false).increment10(),
              child: Text("+10"),
            ),
            RaisedButton(
              onPressed: () =>
                  Provider.of<Counter10>(context, listen: false).decrement10(),
              child: Text("-10"),
            ),
          ],
        ),
      ),
    );
  }
}
