import 'package:flutter/material.dart';

class ans1 extends StatefulWidget {
  const ans1({Key? key}) : super(key: key);

  @override
  _ans1State createState() => _ans1State();
}

class _ans1State extends State<ans1> {
  @override
  Widget build(BuildContext context) {
    dynamic count=ModalRoute.of(context)!.settings.arguments;
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
              child: Image.asset("asset/images/fail.png",fit: BoxFit.fill,),
            ),
            SizedBox(height: 20,),
            Text("$count/10",style: TextStyle(color:Colors.white,fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
