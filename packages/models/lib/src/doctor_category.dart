import 'package:flutter/material.dart';

enum DoctorCategory {
  anesthesiology(name: "Anesthesiology", icon: Icons.account_circle_outlined),
  cardiology(name: "Cardiology", icon: Icons.favorite_border_outlined),
  dentist(name: "Dentist", icon: Icons.person_2_outlined),
  dermatology(name: "Dermatology", icon: Icons.favorite_border_outlined),
  dermatology2(name: "Dermatology2", icon: Icons.favorite_border_outlined),
  dermatology3(name: "Dermatology3", icon: Icons.favorite_border_outlined),
  emergencyMedicine(
      name: "Emergency Medicine", icon: Icons.favorite_border_outlined);

  final String name;
  final IconData icon;

  const DoctorCategory({required this.name, required this.icon});
}
