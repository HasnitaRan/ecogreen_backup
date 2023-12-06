import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const StartButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 185, 142, 1),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text,
              style: TextStyle(
                color: Color.fromRGBO(222, 231, 224, 1),
              ),
            ),

            const SizedBox(width: 10),

            // icon
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
