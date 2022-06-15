import 'package:flutter/material.dart';

class ans extends StatefulWidget {
  const ans({Key? key}) : super(key: key);

  @override
  _ansState createState() => _ansState();
}

class _ansState extends State<ans> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    dynamic count = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("RESULT PAGE"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue.shade900,
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                "asset/images/win.jpg",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "$count/10",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
