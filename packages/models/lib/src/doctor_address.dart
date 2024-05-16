// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DoctorAddress extends Equatable {
  final String id;
  final String doctorId;
  final LatLng latlng;
  final String streetAddress;
  final String streeNumber;
  final String city;
  final String state;
  final String country;
  final String postalCode;

  const DoctorAddress({
    required this.id,
    required this.doctorId,
    required this.latlng,
    required this.streetAddress,
    required this.streeNumber,
    required this.city,
    required this.state,
    required this.country,
    required this.postalCode,
  });

  @override
  List<Object?> get props => [
        id,
        doctorId,
        latlng,
        streetAddress,
        streeNumber,
        city,
        state,
        country,
        postalCode
      ];

  DoctorAddress copyWith(
      {String? id,
      String? doctorId,
      LatLng? latlng,
      String? streetAddress,
      String? streeNumber,
      String? city,
      String? state,
      String? country,
      String? postalCode}) {
    return DoctorAddress(
        id: id ?? this.id,
        doctorId: doctorId ?? this.doctorId,
        latlng: latlng ?? this.latlng,
        streetAddress: streetAddress ?? this.streetAddress,
        streeNumber: streeNumber ?? this.streeNumber,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        postalCode: postalCode ?? this.postalCode);
  }

  static const sampleAddresses = [
    DoctorAddress(
        id: '1',
        doctorId: '1',
        latlng: LatLng(25.1972, 55.2744),
        streetAddress: 'Downtown Dubai',
        streeNumber: '123',
        city: 'Dubai',
        state: 'Dubai',
        country: 'United Arab Emirates',
        postalCode: '12345'),
    DoctorAddress(
        id: '2',
        doctorId: '2',
        latlng: LatLng(25.0805, 55.1413),
        streetAddress: 'Dubai Marina',
        streeNumber: '123',
        city: 'Dubai',
        state: 'Dubai',
        country: 'United Arab Emirates',
        postalCode: '12345'),
    DoctorAddress(
        id: '3',
        doctorId: '3',
        latlng: LatLng(25.1171, 55.2028),
        streetAddress: 'Al Barsha',
        streeNumber: '123',
        city: 'Dubai',
        state: 'Dubai',
        country: 'United Arab Emirates',
        postalCode: '12345'),
  ];
}
