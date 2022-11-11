import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(
                      child: Image.asset('image/dice$leftDice.png')),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Image.asset('image/dice$rightDice.png')),
                ]
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: ElevatedButton(
                  onPressed:(){
                      setState(() {

                      });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent
                  ),
                  child: Icon(Icons.play_arrow,
                    size: 50.0,
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
