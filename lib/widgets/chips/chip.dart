import 'package:flutter/material.dart';

class FZBChip extends StatefulWidget {
  final String label;
  final void Function()? onTap;

  const FZBChip({Key? key, required this.label, this.onTap}) : super(key: key);

  @override
  State<FZBChip> createState() => _FZBChipState();
}

class _FZBChipState extends State<FZBChip> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.black)))),
        onPressed: widget.onTap,
        child: Text(
          widget.label,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}
