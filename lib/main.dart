import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter',
      home: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '控时',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Center(
        child: TheTimer(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 32),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class TheTimer extends StatefulWidget {
  const TheTimer({super.key});

  @override
  State<TheTimer> createState() => _TimerState();
}

class _TimerState extends State<TheTimer> {
  String getTime() {
    return '23:20:20.3';
  }

  String currentTime = '';

  _TimerState() {
    this.currentTime = this.getTime();
  }

  @override
  void initState() {
    super.initState();
    // _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
    //   ///定时任务
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      SizedBox(
          height: 220,
          width: 220,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            value: .7,
          )),
      Text('${currentTime}',
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500))
    ]);
  }
}
