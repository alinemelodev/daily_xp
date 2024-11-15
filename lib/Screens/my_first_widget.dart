import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: Colors.greenAccent,
                  width: 200,
                  height: 200,
                ),
                Container(
                  color: Colors.deepPurple,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: Colors.deepOrangeAccent,
                  width: 200,
                  height: 200,
                ),
                Container(
                  color: Colors.pinkAccent,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.amber,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.pinkAccent,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            Container(
              color: Colors.greenAccent,
              height: 30,
              width: 300,
              child: const Text(
                'Aprendendo Flutter',
                style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // print('Ação do botão');
              },
              child: const Text('Aperte o botão!'),
            )
          ],
        ),
      );
  }
}
