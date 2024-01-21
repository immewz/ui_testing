import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Text Field',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow)
                  ),
                  labelText: 'Enter Your Name',
                  labelStyle: TextStyle(color: Colors.green),
                  helperText: 'Your original name',
                  suffixIcon: Icon(Icons.perm_identity),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                cursorColor: Colors.black,
                initialValue: 'Your Name',
                maxLength: 20,
              ),
            ),

            const SizedBox(
              height: 50.0,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  labelText: 'Enter Your Password',
                  labelStyle: TextStyle(color: Colors.red),
                  helperText: 'Your Account name',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                maxLength: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
