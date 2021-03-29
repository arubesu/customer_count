import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Customer Counter", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static String get _defaultMessage => "You may come in!";

  int _customersCount = 0;
  String _message = _defaultMessage;

  void _changeCustomers(int delta) {
    setState(() {
      int newCount = _customersCount + delta;

      if (newCount < 0) {
        _message = "Already Empty!";
        return;
      }

      _message = newCount > 10 ? "Too many customers" : _defaultMessage;

      _customersCount = newCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://picsum.photos/200/300',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Customers: $_customersCount",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                      onPressed: () {
                        _changeCustomers(1);
                      },
                      child: Text("+1",
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                      onPressed: () {
                        _changeCustomers(-1);
                      },
                      child: Text("-1",
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                          ))),
                ),
              ],
            ),
            Text("$_message",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ))
          ],
        ),
      ],
    );
  }
}
