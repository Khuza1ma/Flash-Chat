import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? color;
  final String? btnTitle;
  final Function? onPress;
  const RoundedButton({super.key,this.color,this.btnTitle,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onPress!();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnTitle!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
