import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Radio',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                  ),
                  const Text(
                    'Work',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              RadioListTile(
                value: 3,
                groupValue: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
                title: const Text(
                  'Outside',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
