import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_management/models/counter_store.dart';

class IncrementScreen extends StatefulWidget {
  IncrementScreen({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;
  @override
  _IncrementScreenState createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {
  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) => Text(
                '${counter.counter}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Observer(
              builder: (_) => Text(
                '${counter.state}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            MaterialButton(
              onPressed: () => counter.increment(),
              child: Text('Increment'),
              textColor: Colors.white,
              color: Colors.red,
            ),
            SizedBox(height: 10.0),
            MaterialButton(
              onPressed: () => counter.decrease(),
              child: Text('Decrease'),
              textColor: Colors.white,
              color: Colors.red,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print(''),
        child: Icon(Icons.arrow_forward_ios),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
