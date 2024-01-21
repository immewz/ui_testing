import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? _firstValue = false;
  bool? _secondValue = false;
  bool? _thirdValue = false;
  bool? _fourthValue = false;
  bool? _fifthValue = false;
  bool? _sixthValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Checkbox',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CheckboxListTile(
              value: _firstValue,
              activeColor: Colors.orange,
              tristate: true,
              title: const Text(
                'Comedy',
                style: TextStyle(color: Colors.black),
              ),
              onChanged: (newBool) {
                setState(() {
                  _firstValue = newBool;
                });
              },

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _secondValue,
                  activeColor: Colors.orange,
                  tristate: true,
                  onChanged: (newBool) {
                    setState(() {
                      _secondValue = newBool;
                    });
                  },
                ),
                const Text(
                  'Animation',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _thirdValue,
                  activeColor: Colors.orange,
                  tristate: true,
                  onChanged: (newBool) {
                    setState(() {
                      _thirdValue = newBool;
                    });
                  },
                ),
                const Text(
                  'Action',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _fourthValue,
                  activeColor: Colors.orange,
                  tristate: true,
                  onChanged: (newBool) {
                    setState(() {
                      _fourthValue = newBool;
                    });
                  },
                ),
                const Text(
                  'Horror',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _fifthValue,
                  activeColor: Colors.orange,
                  tristate: true,
                  onChanged: (newBool) {
                    setState(() {
                      _fifthValue = newBool;
                    });
                  },
                ),
                const Text(
                  'Drama',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _sixthValue,
                  activeColor: Colors.orange,
                  tristate: true,
                  onChanged: (newBool) {
                    setState(() {
                      _sixthValue = newBool;
                    });
                  },
                ),
                const Text(
                  'Sc-fi',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
