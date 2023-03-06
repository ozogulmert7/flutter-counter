import 'package:flutter/material.dart';

class CounterFontSize extends StatefulWidget {
  const CounterFontSize({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CounterFontSizeState createState() => _CounterFontSizeState();
}

class _CounterFontSizeState extends State<CounterFontSize> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _floatingActionButtonPressed() {
    setState(() {
      _counter += 2;
      if (_counter < 0) {
        _textColor = Colors.red;
      } else if (_counter == 0) {
        _textColor = Colors.black;
      } else {
        _textColor = Colors.green;
      }
      _textSize += 2.0;
    });
  }

  Color _textColor = Colors.black;
  double _textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(fontSize: _textSize, color: _textColor),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text('-'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingActionButtonPressed,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
