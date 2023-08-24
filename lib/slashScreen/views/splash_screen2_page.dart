
import 'package:flutter/material.dart';
import 'package:grocer_ease_app/customWidget/custom_button.dart';

class SplashScreen2Page extends StatelessWidget {
  const SplashScreen2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               TextButton(onPressed: () {

               },
               child: const Text('Text Button'),
               ),
               ElevatedButton(
                onPressed: () {

                },
                child: const Text('Elevated button')),
                OutlinedButton(
                onPressed: () {

                },
                child: const Text('outline button')),
                CustomButton(
                  btnName: 'test moto',
                  onPressed: () {
                    print('onpressed dito');
                  },
                ),
             ],
        ),
      ),
    );
  }
}