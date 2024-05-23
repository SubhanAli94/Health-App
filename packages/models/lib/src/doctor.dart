// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:models/models.dart';

import 'doctor_address.dart';
import 'doctor_package.dart';
import 'doctor_working_hours.dart';

class Doctor extends Equatable {
  final String id;
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
      id: '1',
      name: 'Dr. John Doe',
      bio:
          'Dr. John Doe is a compassionate psychiatrist focusing on adolescent mental health and trauma recovery. She earned her medical degree from Yale School of Medicine and completed her residency at the University of Michigan. Dr. Khan is acclaimed for her therapeutic approach combining medication management with cognitive-behavioral therapy. She actively participates in mental health awareness campaigns and community outreach programs. Dr. Khan is also an avid reader and enjoys writing poetry.',
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
      id: '2',
      name: 'Dr. Jane Smith',
      bio:
          'Dr. Jane Smith specializes in pediatric care with over 15 years of experience. She is known for her gentle approach with children and her ability to ease parental concerns. Dr. Carter holds a degree from Johns Hopkins University and completed her residency at Boston Children’s Hospital. She is also an advocate for child nutrition and wellness. In her free time, she volunteers at local schools to promote health education.',
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
      id: '3',
      name: 'Dr. Alan Brown',
      bio:
          'Dr. Alan Brown is a renowned cardiologist with a focus on advanced heart disease treatment and prevention. He earned his medical degree from the University of California, San Francisco and completed his fellowship at the Cleveland Clinic. Dr. Mehta is highly regarded for his expertise in minimally invasive procedures. He has published numerous research papers and is actively involved in clinical trials. Outside of his practice, he enjoys hiking and playing classical guitar.',
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
      id: '4',
      name: 'Dr. Emily White',
      bio:
          'Dr. Emily White is a board-certified dermatologist specializing in skin cancer treatment and cosmetic dermatology. She graduated from Harvard Medical School and completed her dermatology residency at Stanford University. Dr. Lin is recognized for her skill in laser treatments and Mohs surgery. She frequently lectures at international dermatology conferences and contributes to medical journals. Dr. Lin is also passionate about art and often incorporates it into her patient care approach.',
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
      id: '5',
      name: 'Dr. Michael Green',
      bio:
          'Dr. Michael Green is an orthopedic surgeon with a specialization in sports injuries and joint replacement. He received his medical training at Duke University and completed his orthopedic residency at the Mayo Clinic.',
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
