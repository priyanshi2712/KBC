import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc_game/ans.dart';

import 'ans1.dart';
import 'kbc_game.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ans1(),
      // initialRoute: 'ans1',
         routes: {
       '/':(context)=>kbc_game(),
         '/ans':(context)=>ans(),
           '/ans1':(context)=>ans1(),
         },
    ),
  );
}