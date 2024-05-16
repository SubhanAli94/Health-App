import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppointmentPreviewCard extends StatelessWidget {
  const AppointmentPreviewCard({super.key, required this.appointment});

  // TODO: Create Appointment class.
  final dynamic appointment;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            gradient: LinearGradient(colors: [
              colorTheme.primary,
              colorTheme.tertiary.withOpacity(0.8)
            ]),
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 100,
                child: Center(
                    child: Text(
                  'No Appointment Yet.',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
        Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
            color: colorTheme.primary.withOpacity(0.25),
          ),
        ),
        Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
            color: colorTheme.primary.withOpacity(0.15),
          ),
        )
      ],
    );
  }
}
