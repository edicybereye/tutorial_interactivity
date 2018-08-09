import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ScooringApp(),
  ));
}

class ScooringApp extends StatefulWidget {
  @override
  _ScooringAppState createState() => _ScooringAppState();
}

class _ScooringAppState extends State<ScooringApp> {
  int _scoreTeamA = 0;
  int _scoreTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Scoring App"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('$_scoreTeamA'),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        child: Text(
                          "Score + 1",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _scoreTeamA += 1;
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        child: Text(
                          "Score + 2",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _scoreTeamA += 2;
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        child: Text(
                          "Score + 3",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _scoreTeamA += 3;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('$_scoreTeamB'),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        child: Text(
                          "Score + 1",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _scoreTeamB += 1;
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        child: Text(
                          "Score + 2",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _scoreTeamB += 2;
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        child: Text(
                          "Score + 3",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _scoreTeamB += 3;
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            RaisedButton(
              color: Colors.blue[300],
              child: Text(
                "Reset Score",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _scoreTeamA = 0;
                  _scoreTeamB = 0;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
