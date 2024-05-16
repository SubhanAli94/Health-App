// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:models/src/doctor.dart';

class DoctorListTile extends StatelessWidget {
  const DoctorListTile({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.onPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.network(doctor.profileImageUrl),
        ),
      ),
      title: Text(
        doctor.name,
        style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doctor.category.name,
            style: textTheme.bodyMedium!.copyWith(color: colorScheme.secondary),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange.withOpacity(0.5),
                size: 18,
              ),
              const SizedBox(width: 4.0),
              Text(
                doctor.rating.toString(),
                style: textTheme.bodySmall!.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 16.0),
              Icon(
                Icons.work,
                color: colorScheme.tertiary.withOpacity(0.5),
                size: 18,
              ),
              const SizedBox(width: 4.0),
              Text(
                doctor.rating.toString(),
                style: textTheme.bodySmall!.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
      trailing: FilledButton(
        onPressed: () {},
        child: const Text('Book Now'),
      ),
    );
  }
}
