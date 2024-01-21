import 'package:flutter/material.dart';
import 'package:ui_testing/component/my_button.dart';
import 'package:ui_testing/pages/my_bottom_naviagtion.dart';
import 'package:ui_testing/pages/my_bottom_sheet.dart';
import 'package:ui_testing/pages/my_buttons.dart';
import 'package:ui_testing/pages/my_card.dart';
import 'package:ui_testing/pages/my_carousel.dart';
import 'package:ui_testing/pages/my_checkbox.dart';
import 'package:ui_testing/pages/my_dialog.dart';
import 'package:ui_testing/pages/my_fab.dart';
import 'package:ui_testing/pages/my_radio.dart';
import 'package:ui_testing/pages/my_slider.dart';
import 'package:ui_testing/pages/my_textfield.dart';
import 'package:ui_testing/pages/my_toggle.dart';

void main() {
  runApp(const UiApp());
}

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'UI Testing',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: false,
        ),
        body: const SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Card
                MyButton(
                  customText: 'Card',
                  customMessage: 'Card Message',
                  customClass: MyCard(),
                ),

                // Carousel
                MyButton(
                  customText: 'Carousel',
                  customMessage: 'Carousel Message',
                  customClass: MyCarousel(),
                ),

                // Buttons
                MyButton(
                  customText: 'Buttons',
                  customMessage: 'Button Message',
                  customClass: MyButtons(),
                ),

                // FAB
                MyButton(
                  customText: 'Floating Action Bar',
                  customMessage: 'Floating Action Bar Message',
                  customClass: MyFAB(),
                ),

                // Dialog
                MyButton(
                  customText: 'Dialog',
                  customMessage: 'Dialog Message',
                  customClass: MyDialog(),
                ),

                // BottomNavigation Bar
                MyButton(
                  customText: 'Bottom Navigation Bar',
                  customMessage: 'Bottom Navigation Bar Message',
                  customClass: MyBottomNavigation(),
                ),

                // CheckBox
                MyButton(
                  customText: 'Check Button',
                  customMessage: 'Check Button Message',
                  customClass: MyCheckBox(),
                ),

                // Radio
                MyButton(
                  customText: 'Radio Button',
                  customMessage: 'Radio Button Message',
                  customClass: MyRadio(),
                ),

                // TextField
                MyButton(
                  customText: 'Text Field',
                  customMessage: 'Text Field Message',
                  customClass: MyTextField(),
                ),

                // Toggle Button
                MyButton(
                  customText: 'Toggle Button',
                  customMessage: 'Toggle Button Message',
                  customClass: MyToggle(),
                ),

                // Slider
                MyButton(
                  customText: 'Slider',
                  customMessage: 'Slider Message',
                  customClass: MySlider(),
                ),

                // Bottom Sheet
                MyButton(
                  customText: 'Bottom Sheet',
                  customMessage: 'Bottom Sheet Message',
                  customClass: MyBottomSheet(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
