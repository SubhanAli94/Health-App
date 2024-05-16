// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:models/models.dart';

import 'doctor_address.dart';
import 'doctor_package.dart';
import 'doctor_working_hours.dart';

class Doctor extends Equatable {
  final int id;
  final String name;
  final String bio;
  final String profileImageUrl;
  final DoctorCategory category;
  final DoctorAddress address;
  final List<DoctorPackage> packages;
  final List<DoctorWorkingHours> workingHours;
  final double rating;
  final int reviewCount;
  final int patientCount;

  const Doctor({
    required this.id,
    required this.name,
    required this.bio,
    required this.profileImageUrl,
    required this.category,
    required this.address,
    required this.packages,
    required this.workingHours,
    required this.rating,
    required this.reviewCount,
    required this.patientCount,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        bio,
        profileImageUrl,
        category,
        address,
        packages,
        workingHours,
        rating,
        reviewCount,
        patientCount,
      ];

  static final sampleDoctors = [
    Doctor(
      id: 1,
      name: 'Dr. John Doe',
      bio: 'Experienced Cardiologist with over 20 years in the field.',
      profileImageUrl:
          'https://assets-global.website-files.com/5e51c674258ffe10d286d30a/5e535c97550b761e38f7f4cd_peep-94.png',
      category: DoctorCategory.cardiology,
      address: DoctorAddress.sampleAddresses[0],
      packages: [
        DoctorPackage.samplePackages[0],
        DoctorPackage.samplePackages[2]
      ],
      workingHours: DoctorWorkingHours.sampleWorkingHours.sublist(0, 5),
      rating: 4.8,
      reviewCount: 120,
      patientCount: 500,
    ),
    Doctor(
      id: 2,
      name: 'Dr. Jane Smith',
      bio: 'Leading Dermatologist specializing in skin conditions.',
      profileImageUrl:
          'https://assets-global.website-files.com/5e51c674258ffe10d286d30a/5e535d897488c25a204b12ff_peep-102.png',
      category: DoctorCategory.dermatology,
      address: DoctorAddress.sampleAddresses[0],
      packages: [
        DoctorPackage.samplePackages[1],
        DoctorPackage.samplePackages[2]
      ],
      workingHours: DoctorWorkingHours.sampleWorkingHours.sublist(2, 7),
      rating: 4.5,
      reviewCount: 85,
      patientCount: 300,
    ),
    Doctor(
      id: 3,
      name: 'Dr. Alan Brown',
      bio: 'Renowned Anesthesiologist with extensive experience.',
      profileImageUrl:
          'https://assets-global.website-files.com/5e51c674258ffe10d286d30a/5e53595a7371bb55159fd9a2_peep-66.png',
      category: DoctorCategory.anesthesiology,
      address: DoctorAddress.sampleAddresses[1],
      packages: [
        DoctorPackage.samplePackages[0],
        DoctorPackage.samplePackages[1]
      ],
      workingHours: DoctorWorkingHours.sampleWorkingHours.sublist(0, 6),
      rating: 4.7,
      reviewCount: 110,
      patientCount: 450,
    ),
    Doctor(
      id: 4,
      name: 'Dr. Emily White',
      bio: 'Expert in Emergency Medicine with a passion for patient care.',
      profileImageUrl:
          'https://assets-global.website-files.com/5e51c674258ffe10d286d30a/5e535516c6b249395e2a3845_peep-34.png',
      category: DoctorCategory.emergencyMedicine,
      address: DoctorAddress.sampleAddresses[2],
      packages: [
        DoctorPackage.samplePackages[1],
        DoctorPackage.samplePackages[2]
      ],
      workingHours: DoctorWorkingHours.sampleWorkingHours,
      rating: 4.6,
      reviewCount: 95,
      patientCount: 350,
    ),
    Doctor(
      id: 5,
      name: 'Dr. Michael Green',
      bio: 'Highly skilled Dentist with a focus on preventive care.',
      profileImageUrl:
          'https://assets-global.website-files.com/5e51c674258ffe10d286d30a/5e535b5e8becbf0e0b545ab7_peep-83.png',
      category: DoctorCategory.dentist,
      address: DoctorAddress.sampleAddresses[0],
      packages: [
        DoctorPackage.samplePackages[0],
        DoctorPackage.samplePackages[1]
      ],
      workingHours: DoctorWorkingHours.sampleWorkingHours.sublist(1, 7),
      rating: 4.9,
      reviewCount: 130,
      patientCount: 600,
    ),
  ];
}
