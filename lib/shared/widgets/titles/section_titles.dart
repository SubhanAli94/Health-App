import 'package:flutter/material.dart';

class SectionTitles extends StatelessWidget {
  final String text;
  String? action;
  VoidCallback? onPressed;
  SectionTitles({this.onPressed, this.action, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        if (action != null)
          TextButton(
            onPressed: onPressed,
            child: Text(action!,
                style: textTheme.bodyMedium!.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: colorTheme.secondary,
                    color: colorTheme.secondary)),
          )
      ],
    );
  }
}
