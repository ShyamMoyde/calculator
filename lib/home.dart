import 'package:calculator/component/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column( mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(alignment: Alignment.bottomRight ,), Text(
                      userInput.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      answer.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Mybtn(
                        title: 'AC',
                        onPress: () {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '%',
                        onPress: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: 'DEL',
                        onPress: () {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '/',
                        onPress: () {
                          userInput += '/';
                          setState(() {});
                        },
                        mycolor: Color(0xffffa00a),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybtn(
                        title: '7',
                        onPress: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '8',
                        onPress: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '9',
                        onPress: () {
                          userInput += '9';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: 'x',
                        onPress: () {
                          userInput += 'x';
                          setState(() {});
                        },
                        mycolor: Color(0xffffa00a),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybtn(
                        title: '4',
                        onPress: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '5',
                        onPress: () {
                          userInput += '5';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '6',
                        onPress: () {
                          userInput += '6';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '-',
                        onPress: () {
                          userInput += '-';
                          setState(() {});
                        },
                        mycolor: Color(0xffffa00a),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybtn(
                        title: '1',
                        onPress: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '2',
                        onPress: () {
                          userInput += '2';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '3',
                        onPress: () {
                          userInput += '3';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '+',
                        onPress: () {
                          userInput += '+';
                          setState(() {});
                        },
                        mycolor: Color(0xffffa00a),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Mybtn(
                        title: '00',
                        onPress: () {
                          userInput += '00';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '0',
                        onPress: () {
                          userInput += '0';
                          setState(() {});
                        },
                      ),
                      Mybtn(
                        title: '.',
                        onPress: () {
                          userInput +='.';
                          setState(() {

                          });
                        },
                      ),
                      Mybtn(
                        title: '=',
                        onPress: () {
                          equalPress();
                          setState(() {});
                        },
                        mycolor: Color(0xffffa00a),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput=userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
