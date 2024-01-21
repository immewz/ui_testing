import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.customText, required this.customMessage, required this.customClass});

  final String customText;
  final String customMessage;
  final dynamic customClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: TextButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context) => customClass),);

          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(customMessage),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: (){},
                ),
              )
          );

        },
        child: Text(
          customText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

}
