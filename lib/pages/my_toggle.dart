import 'package:flutter/material.dart';

class MyToggle extends StatefulWidget {
  const MyToggle({super.key});

  @override
  State<MyToggle> createState() => _MyToggleState();
}

class _MyToggleState extends State<MyToggle> {
  final isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Toggle',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ToggleButtons(
          isSelected: isSelected,
          onPressed: (index) {
            setState(() {
              isSelected[index] = !isSelected[index];
            });
          },
          children: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: const Text('Test1'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: (){},
                      ),
                    )
                );
              },
              child: const Text('Test 1'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: const Text('Test2'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: (){},
                      ),
                    )
                );
              },
              child: const Text('Test 2'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: const Text('Test3'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: (){},
                      ),
                    )
                );
              },
              child: const Text('Test 3'),
            ),
          ],
        ),
      ),
    );
  }
}
