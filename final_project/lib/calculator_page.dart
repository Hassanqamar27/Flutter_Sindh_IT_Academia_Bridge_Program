import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _display = '';

  _onButtonPressed(String text) {
    // Handle button presses here (e.g., update the display)
    setState(() {
      _display += text;
    });
  }

  _calculateResult() {
    // Perform calculations here
    try {
      // Use a math library or parser to evaluate the expression
      String result = evaluateExpression(_display);
      setState(() {
        _display = result;
      });
    } catch (e) {
      // Handle any errors or invalid input
      setState(() {
        _display = 'Error';
      });
    }
  }

  _clearDisplay() {
    // Clear the display
    setState(() {
      _display = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _display,
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildButton('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('C'),
              _buildButton('0'),
              _buildButton('='),
              _buildButton('+'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {
        if (text == 'C') {
          _clearDisplay();
        } else if (text == '=') {
          _calculateResult();
        } else {
          _onButtonPressed(text);
        }
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

String evaluateExpression(String expression) {
  // yahan pa return krna ka code yani function laga ka return hoga warna 0 return hoga
  return '0'; // Replace with actual result
}

