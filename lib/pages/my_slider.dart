import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 20;
  RangeValues _rangeSliderValues = const RangeValues(40, 80);

  double _sliderDiscreteValue = 20;
  RangeValues _rangeSliderDiscreteValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Slider',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              label: _sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                  // print(_sliderValue);
                });
              },
            ),
            RangeSlider(
              values: _rangeSliderValues,
              min: 0,
              max: 100,
              labels: RangeLabels(_rangeSliderValues.start.round().toString(),
                  _rangeSliderValues.end.round().toString()),
              onChanged: (values) {
                setState(() {
                  _rangeSliderValues = values;
                  // print(_sliderValue);
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              value: _sliderDiscreteValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: _sliderDiscreteValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderDiscreteValue= value;
                  // print(_sliderDiscreteValue);
                });
              },
            ),
            RangeSlider(
              values: _rangeSliderDiscreteValues,
              min: 0,
              max: 100,
              divisions: 5,
              labels: RangeLabels(_rangeSliderDiscreteValues.start.round().toString(),
                  _rangeSliderDiscreteValues.end.round().toString()),
              onChanged: (values) {
                setState(() {
                  _rangeSliderDiscreteValues = values;
                  // print(_sliderDiscreteValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
