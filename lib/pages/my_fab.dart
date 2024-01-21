import 'package:flutter/material.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Floating Action Bar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.small(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is mini FAB'),
                    action: SnackBarAction(
                      onPressed: (){},
                      label: 'Undo',
                    ),
                  ),
                );
              },
              shape: const CircleBorder(),
              backgroundColor: Colors.tealAccent,
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            // FloatingActionButton(
            //   onPressed: () {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: const Text('This is regular FAB'),
            //         action: SnackBarAction(
            //           onPressed: (){},
            //           label: 'Undo',
            //         ),
            //       ),
            //     );
            //   },
            //   shape: const CircleBorder(),
            //   backgroundColor: Colors.tealAccent,
            //   child: const Icon(
            //     Icons.add,
            //     color: Colors.black,
            //   ),
            // ),
            // FloatingActionButton.large(
            //   onPressed: () {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: const Text('This is large FAB'),
            //         action: SnackBarAction(
            //           onPressed: (){},
            //           label: 'Undo',
            //         ),
            //       ),
            //     );
            //   },
            //   shape: const CircleBorder(),
            //   backgroundColor: Colors.tealAccent,
            //   child: const Icon(
            //     Icons.add,
            //     color: Colors.black,
            //   ),
            // ),
            // FloatingActionButton.extended(
            //   onPressed: () {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: const Text('This is Extended FAB'),
            //         action: SnackBarAction(
            //           onPressed: (){},
            //           label: 'Undo',
            //         ),
            //       ),
            //     );
            //   },
            //   label: const Text('Extended'),
            //   backgroundColor: Colors.tealAccent,
            //   icon: const Icon(Icons.add),
            // ),
          ],
        ),
      ),
    );
  }
}
