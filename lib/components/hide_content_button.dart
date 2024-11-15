import 'package:flutter/material.dart';

class HideContentButton extends StatefulWidget {
  const HideContentButton({super.key});

  @override
  State<HideContentButton> createState() => _HideContentButtonState();
}

class _HideContentButtonState extends State<HideContentButton> {
  bool isContentVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            isContentVisible = !isContentVisible;
          });
        },
        child: Icon(
          Icons.remove_red_eye,
          color: isContentVisible ? Colors.cyan : Colors.blueGrey,
          size: 30,
        ),
      ),
    );
  }
}
