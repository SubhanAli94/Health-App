// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'consultation_mode.dart';

class DoctorPackage {
  final String id;
  final String doctorId;
  final String packageName;
  final String description;
  final Duration duration;
  final double price;
  final ConsultationMode consultationMode;

  const DoctorPackage({
    required this.id,
    required this.doctorId,
    required this.packageName,
    required this.description,
    required this.duration,
    required this.price,
    required this.consultationMode,
  });

  static const samplePackages = [
    DoctorPackage(
        id: '1',
        doctorId: '1',
        packageName: 'Basic',
        description: 'Basic Consultation Package',
        duration: Duration(minutes: 30),
        price: 100,
        consultationMode: ConsultationMode.video),
    DoctorPackage(
        id: '2',
        doctorId: '2',
        packageName: 'Standart',
        description: 'Standart Consultation Package',
        duration: Duration(minutes: 30),
        price: 200,
        consultationMode: ConsultationMode.inPerson),
    DoctorPackage(
        id: '3',
        doctorId: '3',
        packageName: 'Premium',
        description: 'Premium Consultation Package',
        duration: Duration(minutes: 90),
        price: 300,
        consultationMode: ConsultationMode.video),
  ];
}
