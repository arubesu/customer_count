import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Customer Counter",
      home: Stack(
        children: [
          Image.network(
            'https://picsum.photos/200/300',
            fit: BoxFit.cover,
            height: 1000,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Customers: 0",
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
                        onPressed: () {},
                        child: Text("+1",
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                            ))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("-1",
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                            ))),
                  ),
                ],
              ),
              Text("You may come in!",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0,
                  ))
            ],
          ),
        ],
      )));
}
