import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kbc_game extends StatefulWidget {
  const kbc_game({Key? key}) : super(key: key);

  @override
  _kbc_gameState createState() => _kbc_gameState();
}

class _kbc_gameState extends State<kbc_game> {
  int i = 0;

  List co = [
    Colors.blue,
    Colors.amber,
    Colors.pinkAccent,
    Colors.red,
    Colors.purple,
    Colors.brown,
    Colors.lightGreen,
    Colors.yellow,
    Colors.redAccent,
    Colors.orangeAccent,
  ];

  List l1 = [
    "[1] Which of the following gods is also known as ‘Gauri Nandan’ ?(Ganesha)",
    "[2] In the game of ludo the discs or tokens are of how many colours ?(Four)",
    "[3] Who wrote the introduction to the English translation of Rabindranath Tagore’s Gitanjali ?(W.B. Yeats)",
    "[4] In which of these two sports is the term ‘free hit’ used ?(Hockey, Cricket)",
    "[5] Who is the only MP in the current Lok Sabha who is also an Olympic medalist ?(Rajyavardan Singh Rathore)",
    "[6] What is gulab jamun a type of ?(A sweet)",
    "[7] In the film 2 states, a Punjabi boy falls in love with a ______ girl ? (Tamil)",
    "[8] In a circle, which of these is half of the diameter ?(Radius)",
    "[9] Which newspaper once kept its editorial cloumn blank as a mark of protest against the emergency of 1975 ?(The Indian Express)",
    "[10] Who was the first deaf-blind person to receive a bachelor of arts degree ?(Helen Keller)"
  ];

  List ans = [
    "Ganesha",
    "Four",
    "W.B. Yeats",
    "Hockey, Cricket",
    "Rajyavardan Singh Rathore",
    "A sweet",
    "Tamil",
    "Radius",
    "The Indian Express",
    "Helen Keller",
  ];

  List a = [
    "Agni",
    "One",
    "P.B. Shelley",
    "Hockey, Cricket",
    "Abhinav Bindra",
    "A flower",
    "Bengali",
    "Radius",
    "The Times of India",
    "Alice Betteridge",
  ];
  List b = [
    "Indra",
    "Two",
    "Alfred Tennyson",
    "Football, Squash",
    "Rajyavardan Singh Rathore",
    "A fruit",
    "Marathi",
    "Area",
    "The Indian Express",
    "Laura Bridgman",
  ];
  List c = [
    "Hanuman",
    "Three",
    "W.B. Yeats",
    "Badminton, Tennis",
    "Karnam Maleshwari",
    "A sweet",
    "Malayali",
    "Circumference",
    "The Hindu",
    "Helen Keller",
  ];
  List d = [
    "Ganesha",
    "Four",
    "T.S. Elliot",
    "Badminton, Cricket",
    "Gagan Narang",
    "A tree",
    "Tamil",
    "Center",
    "Hindustan Times",
    "Sanzan Tani",
  ];
  int count = 0;
  List user_ans = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                count = 0;
                user_ans.clear();
                setState(() {
                  i = 0;
                });
              },
              icon: Icon(Icons.history),
            )
          ],
          title: Text("KBC GAME"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              color: co[i],
              child: Center(
                child: Text(
                  "${l1[i]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      user_ans.add(a[i]);
                      print("${a[i]}");
                      if (i < 9) {
                        setState(() {
                          i++;
                        });
                      }
                    },
                    child: Text("(A).${a[i]}"),
                    style:
                        ElevatedButton.styleFrom(primary: Colors.blue.shade900),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    user_ans.add(b[i]);
                    print("${user_ans}");
                    if (i < 9) {
                      setState(() {
                        i++;
                      });
                    }
                  },
                  child: Text("(B).${b[i]}"),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blue.shade900),
                ),
                ElevatedButton(
                  onPressed: () {
                    user_ans.add(c[i]);
                    print("${user_ans}");
                    if (i < 9) {
                      setState(() {
                        i++;
                      });
                    }
                  },
                  child: Text("(C).${c[i]}"),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blue.shade900),
                ),
                ElevatedButton(
                  onPressed: () {
                    user_ans.add(d[i]);
                    print("${user_ans}");
                    if (i < 9) {
                      setState(() {
                        i++;
                      });
                    }
                  },
                  child: Text("(D).${d[i]}"),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blue.shade900),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (i == 9) {
                      answer();
                    }
                  },
                  child: Text("SUBMIT"),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blue.shade900),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void answer() {
    count=0;
    for (int  j = 0; j <=9; j++) {
      if (ans[j] == user_ans[j]) {
        count++;
      }
    }
    // Navigator.pushNamed(context, '/ans', arguments: count);
   if(count<5){
     Navigator.pushNamed(context, '/ans1', arguments: count);
   }
   else{
     Navigator.pushNamed(context, '/ans', arguments: count);
   }
  }
}
