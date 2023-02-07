import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    var userInput = 'input';
    var answer = 'answer';

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Column(children: [
          Text(userInput),
          Text(answer),
          Expanded(
            child: Container(
              color: Colors.blue[200],
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return Button(
                    buttonText: buttons[index],
                    color:
                        isOperator(buttons[index]) ? Colors.blue : Colors.grey,
                    textColor: Colors.white,
                  );
                }),
          ),
        ]),
      ),
    );
  }

  bool isOperator(String string) {
    if (string == '%' ||
        string == '/' ||
        string == '*' ||
        string == '-' ||
        string == '+' ||
        string == '=') {
      return true;
    }
    return false;
  }
}
