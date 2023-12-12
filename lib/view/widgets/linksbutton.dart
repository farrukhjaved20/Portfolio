import 'package:flutter/material.dart';

class LinksButton extends StatelessWidget {
  final Function()? onPressed;
  const LinksButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: const Color.fromARGB(255, 255, 136, 0)),
      child: Text(
        'Tap To Open',
        style: TextStyle(fontSize: height * 0.02, color: Colors.white),
      ),
    );
  }
}
