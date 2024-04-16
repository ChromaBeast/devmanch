import 'package:flutter/material.dart';

class IconBtn extends StatefulWidget {
  final String imagelocation;
  const IconBtn({super.key, required this.imagelocation});

  @override
  State<IconBtn> createState() => _IconBtnState();
}

class _IconBtnState extends State<IconBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width * 0.06,
        backgroundColor: Colors.transparent,
        child: Image(
          image: AssetImage(
            widget.imagelocation,
          ),
        ),
      ),
    );
  }
}
