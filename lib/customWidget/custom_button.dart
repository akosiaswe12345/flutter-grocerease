
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
    const CustomButton({
    Key? key,
    required this.btnName,
    this.bgColor = Colors.red, 
    required this.onPressed}) : super(key: key);

   final String btnName;
   final Color bgColor ;
   final Function() onPressed;
  // final VoidCallback? callback;

  // RoundedButtonFull({
  //   required this.btnName,
  //   this.bgColor = Colors.blue,
  //   this.textStyle,
  //   this.callback,
  // });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0.5, 
            spreadRadius: 0.5, 
            offset: Offset.fromDirection(90)),
        ]
      ),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(
        horizontal: 16, 
        vertical: 8
        ),
      child: Center(
        child: Text(
          btnName,
          style: const TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.w500
            ),
        ),
      ),
    ),
    );
    
   
  }
  
}