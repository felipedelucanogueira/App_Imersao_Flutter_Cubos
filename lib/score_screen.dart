import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Image(
              image: AssetImage('lib/assets/icones.png'),
            ),
          ),
          backgroundColor: Color(0xff374952),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 113.0,
                  ),
                  Text(
                    'Voce Acertou',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$result',
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffE83B86)),
                      ),
                      Text('/ $maximum',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff263238)))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 65,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 1),
                )
              ]),
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: Text(
                    'Jogar Novamente',
                    style: TextStyle(fontSize: 14),
                  ),
                  color: Color(0xffDA0175),
                  textColor: Color(0xffF7F7F7),
                  padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
