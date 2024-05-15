import 'package:flutter/material.dart';

class CircleAvatarWithTextLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const CircleAvatarWithTextLabel(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;

    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: colorTheme.primary,
              foregroundColor: colorTheme.onPrimary,
              child: Icon(icon),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ));
  }
}
