import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Buttons',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Text Button'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text(
                'Text Button',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Text Icon Button'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 18,
              ),
              label: const Text(
                'Text Button',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  side: const BorderSide(color: Colors.red, strokeAlign: 2.0)),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Outlined Button'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('This is Outlined Button'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: const Text(
                'Text Button',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      color: Colors.orangeAccent, strokeAlign: 2.0)),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Outlined Icon Button'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 18,
              ),
              label: const Text(
                'Text Button',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Elevated Button'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text(
                'Elevated Button',
                style: TextStyle(color: Colors.red),
              ),
            ),


            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Elevated Icon Button'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 18,
              ),
              label: const Text(
                'Elevated Icon Button',
                style: TextStyle(color: Colors.blue),
              ),
            )


          ],
        ),
      ),
    );
  }
}
