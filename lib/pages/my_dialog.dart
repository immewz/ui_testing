import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Dialog',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Alert Dialog'),
                    content: const Text('This is Alert Dialog Testing'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('Accept Dialog'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {},
                              ),
                            ),
                          );
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Accept',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: const Text(
                'Alert Dialog',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text(
                      'Switch Account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),

                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/solo_leveling.png'),
                        ),
                        title: Text('sololeveling@gmail.com', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),

                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/solo_leveling.png'),
                        ),
                        title: Text('sololeveling@gmail.com', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),

                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Accept Dialog'),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      onPressed: () {},
                                    ),
                                  ),
                                );
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Accept',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                );
              },
              child: const Text(
                'Simple Dialog',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog.fullscreen(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('This is fullscreen dialog'),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                );
              },
              child: const Text(
                'Fullscreen Dialog',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
