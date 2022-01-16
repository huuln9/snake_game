import 'package:flutter/material.dart';

const numInRow = 25;
const numAll = numInRow * 45;

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: numInRow),
              itemCount: numAll,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(color: Colors.grey.shade900),
                );
              },
            ),
          ),
          Expanded(
            child: Container(color: Colors.pink),
          )
        ],
      ),
    );
  }
}
