import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RectangularButton extends StatelessWidget{
  const RectangularButton({
    super.key,
    required this.onPressed,
    required this.label,
  });
   final VoidCallback? onPressed;
   final String label;

   @override
   Widget build(BuildContext context){
return
TextButton(
  onPressed: onPressed,
  child: SizedBox(
    height: 50,
    width: double.infinity,
    child: Card(
      color: onPressed != null ? Colors.orange.shade600 : Colors.orange.shade400,
   child: Center(
    child: Text(label,
    style: TextStyle(fontSize: 25,letterSpacing: 2,fontWeight: FontWeight.w400,color: Colors.black),
    ),
   ),
    ),
  ),
);
   }
}